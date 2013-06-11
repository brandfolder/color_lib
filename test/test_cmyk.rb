#!/usr/bin/env ruby
#--
# ColorLib
# Colour management with Ruby
# http://rubyforge.org/projects/color
#   Version 1.5.0
#
# Licensed under a MIT-style licence. See Licence.txt in the main
# distribution for full licensing information.
#
# Copyright (c) 2005 - 2010 Austin Ziegler and Matt Lyon
#++

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../lib") if __FILE__ == $0
require 'test/unit'
require 'color'

module TestColorLib
  class TestCMYK < Test::Unit::TestCase
    def setup
      @cmyk = ColorLib::CMYK.new(10, 20, 30, 40)
    end

    def test_cyan
      assert_in_delta(0.1, @cmyk.c, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(10, @cmyk.cyan, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.cyan = 20 }
      assert_in_delta(0.2, @cmyk.c, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.c = 2.0 }
      assert_in_delta(100, @cmyk.cyan, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.c = -1.0 }
      assert_in_delta(0.0, @cmyk.c, ColorLib::COLOR_TOLERANCE)
    end

    def test_magenta
      assert_in_delta(0.2, @cmyk.m, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(20, @cmyk.magenta, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.magenta = 30 }
      assert_in_delta(0.3, @cmyk.m, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.m = 2.0 }
      assert_in_delta(100, @cmyk.magenta, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.m = -1.0 }
      assert_in_delta(0.0, @cmyk.m, ColorLib::COLOR_TOLERANCE)
    end

    def test_yellow
      assert_in_delta(0.3, @cmyk.y, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(30, @cmyk.yellow, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.yellow = 20 }
      assert_in_delta(0.2, @cmyk.y, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.y = 2.0 }
      assert_in_delta(100, @cmyk.yellow, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.y = -1.0 }
      assert_in_delta(0.0, @cmyk.y, ColorLib::COLOR_TOLERANCE)
    end

    def test_black
      assert_in_delta(0.4, @cmyk.k, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(40, @cmyk.black, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.black = 20 }
      assert_in_delta(0.2, @cmyk.k, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.k = 2.0 }
      assert_in_delta(100, @cmyk.black, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @cmyk.k = -1.0 }
      assert_in_delta(0.0, @cmyk.k, ColorLib::COLOR_TOLERANCE)
    end

    def test_pdf
      assert_equal("0.100 0.200 0.300 0.400 k", @cmyk.pdf_fill)
      assert_equal("0.100 0.200 0.300 0.400 K", @cmyk.pdf_stroke)
    end

    def test_to_cmyk
      assert(@cmyk.to_cmyk == @cmyk)
    end

    def test_to_grayscale
      gs = nil
      assert_nothing_raised { gs = @cmyk.to_grayscale }
      assert_kind_of(ColorLib::GrayScale, gs)
      assert_in_delta(0.4185, gs.g, ColorLib::COLOR_TOLERANCE)
      assert_kind_of(ColorLib::GreyScale, @cmyk.to_greyscale)
    end

    def test_to_hsl
      hsl = nil
      assert_nothing_raised { hsl = @cmyk.to_hsl }
      assert_kind_of(ColorLib::HSL, hsl)
      assert_in_delta(0.48, hsl.l, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.125, hsl.s, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.08333, hsl.h, ColorLib::COLOR_TOLERANCE)
      assert_equal("hsl(30.00, 12.50%, 48.00%)", @cmyk.css_hsl)
      assert_equal("hsla(30.00, 12.50%, 48.00%, 1.00)", @cmyk.css_hsla)
    end

    def test_to_rgb
      rgb = nil
      assert_nothing_raised { rgb = @cmyk.to_rgb(true) }
      assert_kind_of(ColorLib::RGB, rgb)
      assert_in_delta(0.5, rgb.r, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.4, rgb.g, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.3, rgb.b, ColorLib::COLOR_TOLERANCE)

      assert_nothing_raised { rgb = @cmyk.to_rgb }
      assert_kind_of(ColorLib::RGB, rgb)
      assert_in_delta(0.54, rgb.r, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.48, rgb.g, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.42, rgb.b, ColorLib::COLOR_TOLERANCE)

      assert_equal("#8a7a6b", @cmyk.html)
      assert_equal("rgb(54.00%, 48.00%, 42.00%)", @cmyk.css_rgb)
      assert_equal("rgba(54.00%, 48.00%, 42.00%, 1.00)", @cmyk.css_rgba)
    end

    def test_inspect
      assert_equal("CMYK [10.00%, 20.00%, 30.00%, 40.00%]", @cmyk.inspect)
    end

    def test_to_yiq
      yiq = nil
      assert_nothing_raised { yiq = @cmyk.to_yiq }
      assert_kind_of(ColorLib::YIQ, yiq)
      assert_in_delta(0.4911, yiq.y, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.05502, yiq.i, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.0, yiq.q, ColorLib::COLOR_TOLERANCE)
    end
  end
end
