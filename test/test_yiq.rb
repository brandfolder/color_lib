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
  class TestYIQ < Test::Unit::TestCase
    def setup
      @yiq = ColorLib::YIQ.from_fraction(0.1, 0.2, 0.3)
    end

    def test_brightness
      assert_in_delta(0.1, @yiq.brightness, ColorLib::COLOR_TOLERANCE)
    end

    def test_i
      assert_in_delta(0.2, @yiq.i, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.2, @yiq.i, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.i = 0.5 }
      assert_in_delta(0.5, @yiq.i, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.i = 5 }
      assert_in_delta(1.0, @yiq.i, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.i = -5 }
      assert_in_delta(0.0, @yiq.i, ColorLib::COLOR_TOLERANCE)
    end

    def test_q
      assert_in_delta(0.3, @yiq.q, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.3, @yiq.q, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.q = 0.5 }
      assert_in_delta(0.5, @yiq.q, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.q = 5 }
      assert_in_delta(1.0, @yiq.q, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.q = -5 }
      assert_in_delta(0.0, @yiq.q, ColorLib::COLOR_TOLERANCE)
    end

    def test_to_grayscale
      assert_equal(ColorLib::GrayScale.new(0.1), @yiq.to_grayscale)
    end

    def test_to_yiq
      assert_equal(@yiq, @yiq.to_yiq)
    end

    def test_y
      assert_in_delta(0.1, @yiq.y, ColorLib::COLOR_TOLERANCE)
      assert_in_delta(0.1, @yiq.y, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.y = 0.5 }
      assert_in_delta(0.5, @yiq.y, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.y = 5 }
      assert_in_delta(1.0, @yiq.y, ColorLib::COLOR_TOLERANCE)
      assert_nothing_raised { @yiq.y = -5 }
      assert_in_delta(0.0, @yiq.y, ColorLib::COLOR_TOLERANCE)
    end

    def test_inspect
      assert_equal("YIQ [10.00%, 20.00%, 30.00%]", @yiq.inspect)
    end
  end
end
