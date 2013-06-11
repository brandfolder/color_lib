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
  class TestGrayScale < Test::Unit::TestCase
    def setup
      @gs = ColorLib::GrayScale.from_percent(33)
    end

    def test_brightness
      assert_in_delta(0.33, @gs.brightness, ColorLib::COLOR_TOLERANCE)
    end

    def test_darken_by
      assert_in_delta(29.7, @gs.darken_by(10).gray, ColorLib::COLOR_TOLERANCE)
    end

    def test_g
      assert_in_delta(0.33, @gs.g, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(33, @gs.grey, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @gs.gray = 40 }
      assert_in_delta(0.4, @gs.g, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @gs.g = 2.0 }
      assert_in_delta(100, @gs.gray, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @gs.grey = -2.0 }
      assert_in_delta(0.0, @gs.g, ColorLib::COLOR_TOLERANCE)
    end

    def test_html_css
      assert_equal("#545454", @gs.html)
      assert_equal("rgb(33.00%, 33.00%, 33.00%)", @gs.css_rgb)
      assert_equal("rgba(33.00%, 33.00%, 33.00%, 1.00)", @gs.css_rgba)
    end

    def test_lighten_by
      assert_in_delta(0.363, @gs.lighten_by(10).g, ColorLib::COLOR_TOLERANCE)
    end

    def test_pdf_fill
      assert_equal("0.330 g", @gs.pdf_fill)
      assert_equal("0.330 G", @gs.pdf_stroke)
    end

    def test_to_cmyk
      cmyk = nil
      assert_nothing_raised { cmyk = @gs.to_cmyk }
      assert_kind_of(ColorLib::CMYK, cmyk)
      assert_in_delta(0.0, cmyk.c, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.0, cmyk.m, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.0, cmyk.y, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.67, cmyk.k, ColorLib::COLOR_TOLERANCE)
    end

    def test_to_grayscale
      assert_equal(@gs, @gs.to_grayscale)
      assert_equal(@gs, @gs.to_greyscale)
    end

    def test_to_hsl
      hsl = nil
      assert_nothing_raised { hsl = @gs.to_hsl }
      assert_kind_of(ColorLib::HSL, hsl)
      assert_in_delta(0.0, hsl.h, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.0, hsl.s, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.33, hsl.l, ColorLib::COLOR_TOLERANCE)
      assert_equal("hsl(0.00, 0.00%, 33.00%)", @gs.css_hsl)
      assert_equal("hsla(0.00, 0.00%, 33.00%, 1.00)", @gs.css_hsla)
    end

    def test_to_rgb
      rgb = nil
      assert_nothing_raised { rgb = @gs.to_rgb }
      assert_kind_of(ColorLib::RGB, rgb)
      assert_in_delta(0.33, rgb.r, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.33, rgb.g, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.33, rgb.b, ColorLib::COLOR_TOLERANCE)
    end

    def test_to_yiq
      yiq = nil
      assert_nothing_raised { yiq = @gs.to_yiq }
      assert_kind_of(ColorLib::YIQ, yiq)
      assert_in_delta(0.33, yiq.y, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.0, yiq.i, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.0, yiq.q, ColorLib::COLOR_TOLERANCE)
    end

    def test_add
      delta = @gs + ColorLib::GrayScale.new(20)
      max   = @gs + ColorLib::GrayScale.new(80)

      assert_in_delta(1.0, max.g, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.53, delta.g, ColorLib::COLOR_TOLERANCE)
    end

    def test_subtract
      delta = @gs - ColorLib::GrayScale.new(20)
      max   = @gs - ColorLib::GrayScale.new(80)
      assert_in_delta(0.0, max.g, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.13, delta.g, ColorLib::COLOR_TOLERANCE)
    end

    def test_inspect
      assert_equal("Gray [33.00%]", @gs.inspect)
    end
  end
end
