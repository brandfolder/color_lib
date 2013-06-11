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
require 'color_lib'

module TestColorLib
  class TestRGB < Test::Unit::TestCase
    def test_adjust_brightness
      assert_equal("#1a1aff", ColorLib::RGB::Blue.adjust_brightness(10).html)
      assert_equal("#0000e6", ColorLib::RGB::Blue.adjust_brightness(-10).html)
    end

    def test_adjust_hue
      assert_equal("#6600ff", ColorLib::RGB::Blue.adjust_hue(10).html)
      assert_equal("#0066ff", ColorLib::RGB::Blue.adjust_hue(-10).html)
    end

    def test_adjust_saturation
      assert_equal("#ef9374",
                   ColorLib::RGB::DarkSalmon.adjust_saturation(10).html)
      assert_equal("#e39980",
                   ColorLib::RGB::DarkSalmon.adjust_saturation(-10).html)
    end

    def test_red
      red = ColorLib::RGB::Red.dup
      assert_in_delta(1.0, red.r, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(100, red.red_p, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(255, red.red, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(1.0, red.r, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { red.red_p = 33 }
      assert_in_delta(0.33, red.r, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { red.red = 330 }
      assert_in_delta(1.0, red.r, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { red.r = -3.3 }
      assert_in_delta(0.0, red.r, ColorLib::COLOR_TOLERANCE)
    end

    def test_green
      lime = ColorLib::RGB::Lime.dup
      assert_in_delta(1.0, lime.g, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(100, lime.green_p, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(255, lime.green, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { lime.green_p = 33 }
      assert_in_delta(0.33, lime.g, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { lime.green = 330 }
      assert_in_delta(1.0, lime.g, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { lime.g = -3.3 }
      assert_in_delta(0.0, lime.g, ColorLib::COLOR_TOLERANCE)
    end

    def test_blue
      blue = ColorLib::RGB::Blue.dup
      assert_in_delta(1.0, blue.b, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(255, blue.blue, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(100, blue.blue_p, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { blue.blue_p = 33 }
      assert_in_delta(0.33, blue.b, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { blue.blue = 330 }
      assert_in_delta(1.0, blue.b, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { blue.b = -3.3 }
      assert_in_delta(0.0, blue.b, ColorLib::COLOR_TOLERANCE)
    end

    def test_brightness
      assert_in_delta(0.0, ColorLib::RGB::Black.brightness, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.5, ColorLib::RGB::Grey50.brightness, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(1.0, ColorLib::RGB::White.brightness, ColorLib::COLOR_TOLERANCE)
    end

    def test_darken_by
      assert_in_delta(0.5, ColorLib::RGB::Blue.darken_by(50).b,
                      ColorLib::COLOR_TOLERANCE)
    end

    def test_html
      assert_equal("#000000", ColorLib::RGB::Black.html)
      assert_equal(ColorLib::RGB::Black, ColorLib::RGB.from_html("#000000"))
      assert_equal("#0000ff", ColorLib::RGB::Blue.html)
      assert_equal("#00ff00", ColorLib::RGB::Lime.html)
      assert_equal("#ff0000", ColorLib::RGB::Red.html)
      assert_equal("#ffffff", ColorLib::RGB::White.html)

      assert_equal("rgb(0.00%, 0.00%, 0.00%)", ColorLib::RGB::Black.css_rgb)
      assert_equal("rgb(0.00%, 0.00%, 100.00%)", ColorLib::RGB::Blue.css_rgb)
      assert_equal("rgb(0.00%, 100.00%, 0.00%)", ColorLib::RGB::Lime.css_rgb)
      assert_equal("rgb(100.00%, 0.00%, 0.00%)", ColorLib::RGB::Red.css_rgb)
      assert_equal("rgb(100.00%, 100.00%, 100.00%)", ColorLib::RGB::White.css_rgb)

      assert_equal("rgba(0.00%, 0.00%, 0.00%, 1.00)", ColorLib::RGB::Black.css_rgba)
      assert_equal("rgba(0.00%, 0.00%, 100.00%, 1.00)", ColorLib::RGB::Blue.css_rgba)
      assert_equal("rgba(0.00%, 100.00%, 0.00%, 1.00)", ColorLib::RGB::Lime.css_rgba)
      assert_equal("rgba(100.00%, 0.00%, 0.00%, 1.00)", ColorLib::RGB::Red.css_rgba)
      assert_equal("rgba(100.00%, 100.00%, 100.00%, 1.00)",
                   ColorLib::RGB::White.css_rgba)
    end

    def test_lighten_by
      assert_in_delta(1.0, ColorLib::RGB::Blue.lighten_by(50).b,
                      ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.5, ColorLib::RGB::Blue.lighten_by(50).r,
                      ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.5, ColorLib::RGB::Blue.lighten_by(50).g,
                      ColorLib::COLOR_TOLERANCE)
    end

    def test_mix_with
      assert_in_delta(0.5, ColorLib::RGB::Red.mix_with(ColorLib::RGB::Blue, 50).r,
                      ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.0, ColorLib::RGB::Red.mix_with(ColorLib::RGB::Blue, 50).g,
                      ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.5, ColorLib::RGB::Red.mix_with(ColorLib::RGB::Blue, 50).b,
                      ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.5, ColorLib::RGB::Blue.mix_with(ColorLib::RGB::Red, 50).r,
                      ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.0, ColorLib::RGB::Blue.mix_with(ColorLib::RGB::Red, 50).g,
                      ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.5, ColorLib::RGB::Blue.mix_with(ColorLib::RGB::Red, 50).b,
                      ColorLib::COLOR_TOLERANCE)
    end

    def test_pdf_fill
      assert_equal("0.000 0.000 0.000 rg", ColorLib::RGB::Black.pdf_fill)
      assert_equal("0.000 0.000 1.000 rg", ColorLib::RGB::Blue.pdf_fill)
      assert_equal("0.000 1.000 0.000 rg", ColorLib::RGB::Lime.pdf_fill)
      assert_equal("1.000 0.000 0.000 rg", ColorLib::RGB::Red.pdf_fill)
      assert_equal("1.000 1.000 1.000 rg", ColorLib::RGB::White.pdf_fill)
      assert_equal("0.000 0.000 0.000 RG", ColorLib::RGB::Black.pdf_stroke)
      assert_equal("0.000 0.000 1.000 RG", ColorLib::RGB::Blue.pdf_stroke)
      assert_equal("0.000 1.000 0.000 RG", ColorLib::RGB::Lime.pdf_stroke)
      assert_equal("1.000 0.000 0.000 RG", ColorLib::RGB::Red.pdf_stroke)
      assert_equal("1.000 1.000 1.000 RG", ColorLib::RGB::White.pdf_stroke)
    end

    def test_to_cmyk
      assert_kind_of(ColorLib::CMYK, ColorLib::RGB::Black.to_cmyk)
      assert_equal(ColorLib::CMYK.new(0, 0, 0, 100), ColorLib::RGB::Black.to_cmyk)
      assert_equal(ColorLib::CMYK.new(0, 0, 100, 0),
                   ColorLib::RGB::Yellow.to_cmyk)
      assert_equal(ColorLib::CMYK.new(100, 0, 0, 0), ColorLib::RGB::Cyan.to_cmyk)
      assert_equal(ColorLib::CMYK.new(0, 100, 0, 0),
                   ColorLib::RGB::Magenta.to_cmyk)
      assert_equal(ColorLib::CMYK.new(0, 100, 100, 0), ColorLib::RGB::Red.to_cmyk)
      assert_equal(ColorLib::CMYK.new(100, 0, 100, 0),
                   ColorLib::RGB::Lime.to_cmyk)
      assert_equal(ColorLib::CMYK.new(100, 100, 0, 0),
                   ColorLib::RGB::Blue.to_cmyk)
      assert_equal(ColorLib::CMYK.new(10.32, 60.52, 10.32, 39.47),
                   ColorLib::RGB::Purple.to_cmyk)
      assert_equal(ColorLib::CMYK.new(10.90, 59.13, 59.13, 24.39),
                   ColorLib::RGB::Brown.to_cmyk)
      assert_equal(ColorLib::CMYK.new(0, 63.14, 18.43, 0),
                   ColorLib::RGB::Carnation.to_cmyk)
      assert_equal(ColorLib::CMYK.new(7.39, 62.69, 62.69, 37.32),
                   ColorLib::RGB::Cayenne.to_cmyk)
    end

    def test_to_grayscale
      assert_kind_of(ColorLib::GrayScale, ColorLib::RGB::Black.to_grayscale)
      assert_equal(ColorLib::GrayScale.from_fraction(0),
                   ColorLib::RGB::Black.to_grayscale)
      assert_equal(ColorLib::GrayScale.from_fraction(0.5),
                   ColorLib::RGB::Yellow.to_grayscale)
      assert_equal(ColorLib::GrayScale.from_fraction(0.5),
                   ColorLib::RGB::Cyan.to_grayscale)
      assert_equal(ColorLib::GrayScale.from_fraction(0.5),
                   ColorLib::RGB::Magenta.to_grayscale)
      assert_equal(ColorLib::GrayScale.from_fraction(0.5),
                   ColorLib::RGB::Red.to_grayscale)
      assert_equal(ColorLib::GrayScale.from_fraction(0.5),
                   ColorLib::RGB::Lime.to_grayscale)
      assert_equal(ColorLib::GrayScale.from_fraction(0.5),
                   ColorLib::RGB::Blue.to_grayscale)
      assert_equal(ColorLib::GrayScale.from_fraction(0.2510),
                   ColorLib::RGB::Purple.to_grayscale)
      assert_equal(ColorLib::GrayScale.new(40.58),
                   ColorLib::RGB::Brown.to_grayscale)
      assert_equal(ColorLib::GrayScale.new(68.43),
                   ColorLib::RGB::Carnation.to_grayscale)
      assert_equal(ColorLib::GrayScale.new(27.65),
                   ColorLib::RGB::Cayenne.to_grayscale)
    end

    def test_to_hsl
      assert_kind_of(ColorLib::HSL, ColorLib::RGB::Black.to_hsl)
      assert_equal(ColorLib::HSL.new, ColorLib::RGB::Black.to_hsl)
      assert_equal(ColorLib::HSL.new(60, 100, 50), ColorLib::RGB::Yellow.to_hsl)
      assert_equal(ColorLib::HSL.new(180, 100, 50), ColorLib::RGB::Cyan.to_hsl)
      assert_equal(ColorLib::HSL.new(300, 100, 50), ColorLib::RGB::Magenta.to_hsl)
      assert_equal(ColorLib::HSL.new(0, 100, 50), ColorLib::RGB::Red.to_hsl)
      assert_equal(ColorLib::HSL.new(120, 100, 50), ColorLib::RGB::Lime.to_hsl)
      assert_equal(ColorLib::HSL.new(240, 100, 50), ColorLib::RGB::Blue.to_hsl)
      assert_equal(ColorLib::HSL.new(300, 100, 25.10),
                   ColorLib::RGB::Purple.to_hsl)
      assert_equal(ColorLib::HSL.new(0, 59.42, 40.59),
                   ColorLib::RGB::Brown.to_hsl)
      assert_equal(ColorLib::HSL.new(317.5, 100, 68.43),
                   ColorLib::RGB::Carnation.to_hsl)
      assert_equal(ColorLib::HSL.new(0, 100, 27.64),
                   ColorLib::RGB::Cayenne.to_hsl)

      assert_equal("hsl(0.00, 0.00%, 0.00%)", ColorLib::RGB::Black.css_hsl)
      assert_equal("hsl(60.00, 100.00%, 50.00%)",
                   ColorLib::RGB::Yellow.css_hsl)
      assert_equal("hsl(180.00, 100.00%, 50.00%)", ColorLib::RGB::Cyan.css_hsl)
      assert_equal("hsl(300.00, 100.00%, 50.00%)",
                   ColorLib::RGB::Magenta.css_hsl)
      assert_equal("hsl(0.00, 100.00%, 50.00%)", ColorLib::RGB::Red.css_hsl)
      assert_equal("hsl(120.00, 100.00%, 50.00%)", ColorLib::RGB::Lime.css_hsl)
      assert_equal("hsl(240.00, 100.00%, 50.00%)", ColorLib::RGB::Blue.css_hsl)
      assert_equal("hsl(300.00, 100.00%, 25.10%)",
                   ColorLib::RGB::Purple.css_hsl)
      assert_equal("hsl(0.00, 59.42%, 40.59%)", ColorLib::RGB::Brown.css_hsl)
      assert_equal("hsl(317.52, 100.00%, 68.43%)",
                   ColorLib::RGB::Carnation.css_hsl)
      assert_equal("hsl(0.00, 100.00%, 27.65%)", ColorLib::RGB::Cayenne.css_hsl)

      assert_equal("hsla(0.00, 0.00%, 0.00%, 1.00)",
                   ColorLib::RGB::Black.css_hsla)
      assert_equal("hsla(60.00, 100.00%, 50.00%, 1.00)",
                   ColorLib::RGB::Yellow.css_hsla)
      assert_equal("hsla(180.00, 100.00%, 50.00%, 1.00)",
                   ColorLib::RGB::Cyan.css_hsla)
      assert_equal("hsla(300.00, 100.00%, 50.00%, 1.00)",
                   ColorLib::RGB::Magenta.css_hsla)
      assert_equal("hsla(0.00, 100.00%, 50.00%, 1.00)",
                   ColorLib::RGB::Red.css_hsla)
      assert_equal("hsla(120.00, 100.00%, 50.00%, 1.00)",
                   ColorLib::RGB::Lime.css_hsla)
      assert_equal("hsla(240.00, 100.00%, 50.00%, 1.00)",
                   ColorLib::RGB::Blue.css_hsla)
      assert_equal("hsla(300.00, 100.00%, 25.10%, 1.00)",
                   ColorLib::RGB::Purple.css_hsla)
      assert_equal("hsla(0.00, 59.42%, 40.59%, 1.00)",
                   ColorLib::RGB::Brown.css_hsla)
      assert_equal("hsla(317.52, 100.00%, 68.43%, 1.00)",
                   ColorLib::RGB::Carnation.css_hsla)
      assert_equal("hsla(0.00, 100.00%, 27.65%, 1.00)",
                   ColorLib::RGB::Cayenne.css_hsla)

      # The following tests a bug reported by Jean Krohn on 10 June 2006
      # where HSL conversion was not quite correct, resulting in a bad
      # round-trip.
      assert_equal("#008800", ColorLib::RGB.from_html("#008800").to_hsl.html)
      assert_not_equal("#002288", ColorLib::RGB.from_html("#008800").to_hsl.html)

      # The following tests a bug reported by Adam Johnson on 29 October
      # 2010.
      hsl = ColorLib::HSL.new(262, 67, 42)
      c = ColorLib::RGB.from_fraction(0.34496, 0.1386, 0.701399).to_hsl
      assert_in_delta hsl.h, c.h, ColorLib::COLOR_TOLERANCE, "Hue"
      assert_in_delta hsl.s, c.s, ColorLib::COLOR_TOLERANCE, "Saturation"
      assert_in_delta hsl.l, c.l, ColorLib::COLOR_TOLERANCE, "Luminance"
    end

    def test_to_rgb
      assert_equal(ColorLib::RGB::Black, ColorLib::RGB::Black.to_rgb)
    end

    def test_to_yiq
      assert_kind_of(ColorLib::YIQ, ColorLib::RGB::Black.to_yiq)
      assert_equal(ColorLib::YIQ.new, ColorLib::RGB::Black.to_yiq)
      assert_equal(ColorLib::YIQ.new(88.6, 32.1, 0), ColorLib::RGB::Yellow.to_yiq)
      assert_equal(ColorLib::YIQ.new(70.1, 0, 0), ColorLib::RGB::Cyan.to_yiq)
      assert_equal(ColorLib::YIQ.new(41.3, 27.5, 52.3),
                   ColorLib::RGB::Magenta.to_yiq)
      assert_equal(ColorLib::YIQ.new(29.9, 59.6, 21.2), ColorLib::RGB::Red.to_yiq)
      assert_equal(ColorLib::YIQ.new(58.7, 0, 0), ColorLib::RGB::Lime.to_yiq)
      assert_equal(ColorLib::YIQ.new(11.4, 0, 31.1), ColorLib::RGB::Blue.to_yiq)
      assert_equal(ColorLib::YIQ.new(20.73, 13.80, 26.25),
                   ColorLib::RGB::Purple.to_yiq)
      assert_equal(ColorLib::YIQ.new(30.89, 28.75, 10.23),
                   ColorLib::RGB::Brown.to_yiq)
      assert_equal(ColorLib::YIQ.new(60.84, 23.28, 27.29),
                   ColorLib::RGB::Carnation.to_yiq)
      assert_equal(ColorLib::YIQ.new(16.53, 32.96, 11.72),
                   ColorLib::RGB::Cayenne.to_yiq)
    end

    def test_add
      assert_nothing_raised { ColorLib::RGB::Cyan + ColorLib::RGB::Yellow }
      white = ColorLib::RGB::Cyan + ColorLib::RGB::Yellow 
      assert_not_nil(white)
      assert_equal(ColorLib::RGB::White, white) 

      c1 = ColorLib::RGB.new(0x80, 0x80, 0x00)
      c2 = ColorLib::RGB.new(0x45, 0x20, 0xf0)
      cr = ColorLib::RGB.new(0xc5, 0xa0, 0xf0)

      assert_equal(cr, c1 + c2)
    end

    def test_subtract
      black = ColorLib::RGB::LightCoral - ColorLib::RGB::Honeydew
      assert_equal(ColorLib::RGB::Black, black) 

      c1 = ColorLib::RGB.new(0x85, 0x80, 0x00)
      c2 = ColorLib::RGB.new(0x40, 0x20, 0xf0)
      cr = ColorLib::RGB.new(0x45, 0x60, 0x00)

      assert_equal(cr, c1 - c2)
    end

    def test_mean_grayscale
      c1        = ColorLib::RGB.new(0x85, 0x80, 0x00)
      c1_max    = assert_nothing_raised { c1.max_rgb_as_greyscale }
      c1_max    = c1.max_rgb_as_greyscale
      c1_result = ColorLib::GrayScale.from_fraction(0x85 / 255.0)

      assert_equal(c1_result, c1_max)
    end

    def test_from_html
      assert_equal("RGB [#333333]", ColorLib::RGB.from_html("#333").inspect)
      assert_equal("RGB [#333333]", ColorLib::RGB.from_html("333").inspect)
      assert_equal("RGB [#555555]", ColorLib::RGB.from_html("#555555").inspect)
      assert_equal("RGB [#555555]", ColorLib::RGB.from_html("555555").inspect)
      assert_raises(ArgumentError) { ColorLib::RGB.from_html("#5555555") }
      assert_raises(ArgumentError) { ColorLib::RGB.from_html("5555555") }
      assert_raises(ArgumentError) { ColorLib::RGB.from_html("#55555") }
      assert_raises(ArgumentError) { ColorLib::RGB.from_html("55555") }
    end

    def test_inspect
      assert_equal("RGB [#000000]", ColorLib::RGB::Black.inspect)
      assert_equal("RGB [#0000ff]", ColorLib::RGB::Blue.inspect)
      assert_equal("RGB [#00ff00]", ColorLib::RGB::Lime.inspect)
      assert_equal("RGB [#ff0000]", ColorLib::RGB::Red.inspect)
      assert_equal("RGB [#ffffff]", ColorLib::RGB::White.inspect)
    end
  end
end
