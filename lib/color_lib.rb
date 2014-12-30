require "color_lib/version"

module ColorLib
  COLOR_VERSION = VERSION

  class RGB;
  end
  class CMYK;
  end
  class GrayScale;
  end
  class YIQ;
  end
  class Pantone;
  end

  # The maximum "resolution" for colour math; if any value is less than or
  # equal to this value, it is treated as zero.
  COLOR_EPSILON   = 1e-5
  # The tolerance for comparing the components of two colours. In general,
  # colours are considered equal if all of their components are within this
  # tolerance value of each other.
  COLOR_TOLERANCE = 1e-4

  class << self
    # Returns +true+ if the value is less than COLOR_EPSILON.
    def near_zero?(value)
      (value.abs <= COLOR_EPSILON)
    end

    # Returns +true+ if the value is within COLOR_EPSILON of zero or less than
    # zero.
    def near_zero_or_less?(value)
      (value < 0.0 or near_zero?(value))
    end

    # Returns +true+ if the value is within COLOR_EPSILON of one.
    def near_one?(value)
      near_zero?(value - 1.0)
    end

    # Returns +true+ if the value is within COLOR_EPSILON of one or more than
    # one.
    def near_one_or_more?(value)
      (value > 1.0 or near_one?(value))
    end

    # Normalizes the value to the range (0.0) .. (1.0).
    def normalize(value)
      if near_zero_or_less? value
        0.0
      elsif near_one_or_more? value
        1.0
      else
        value
      end
    end

    alias normalize_fractional normalize

    def normalize_to_range(value, range)
      range = (range.end..range.begin) if (range.end < range.begin)

      if value <= range.begin
        range.begin
      elsif value >= range.end
        range.end
      else
        value
      end
    end

    # Normalize the value to the range (0) .. (255).
    def normalize_byte(value)
      normalize_to_range(value, 0..255).to_i
    end

    alias normalize_8bit normalize_byte

    # Normalize the value to the range (0) .. (65535).
    def normalize_word(value)
      normalize_to_range(value, 0..65535).to_i
    end

    alias normalize_16bit normalize_word

    def const_missing(name) #:nodoc:
      case name
      when "VERSION", :VERSION, "COLOR_TOOLS_VERSION", :COLOR_TOOLS_VERSION
        warn "ColorLib::#{name} has been deprecated. Use ColorLib::COLOR_VERSION instead."
        ColorLib::COLOR_VERSION
      else
        if ColorLib::RGB.const_defined?(name)
          warn "ColorLib::#{name} has been deprecated. Use ColorLib::RGB::#{name} instead."
          ColorLib::RGB.const_get(name)
        else
          super
        end
      end
    end

    # Provides a thin veneer over the ColorLib module to make it seem like this
    # is ColorLib 0.1.0 (a class) and not ColorLib 1.4.1 (a module). This
    # "constructor" will be removed in the future.
    #
    # mode = :hsl::   +values+ must be an array of [ hue deg, sat %, lum % ].
    #                 A ColorLib::HSL object will be created.
    # mode = :rgb::   +values+ will either be an HTML-style colour string or
    #                 an array of [ red, green, blue ] (range 0 .. 255). A
    #                 ColorLib::RGB object will be created.
    # mode = :cmyk::  +values+ must be an array of [ cyan %, magenta %, yellow
    #                 %, black % ]. A ColorLib::CMYK object will be created.
    def new(values, mode = :rgb)
      warn "ColorLib.new has been deprecated. Use ColorLib::#{mode.to_s.upcase}.new instead."
      color = case mode
              when :hsl
                ColorLib::HSL.new(*values)
              when :rgb
                values = [values].flatten
                if values.size == 1
                  ColorLib::RGB.from_html(*values)
                else
                  ColorLib::RGB.new(*values)
                end
              when :cmyk
                ColorLib::CMYK.new(*values)
              end
      color.to_hsl
    end
  end
end

require 'color_lib/rgb'
require 'color_lib/cmyk'
require 'color_lib/grayscale'
require 'color_lib/hsl'
require 'color_lib/yiq'
require 'color_lib/rgb/metallic'
require 'color_lib/pantone'