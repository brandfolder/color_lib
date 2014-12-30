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
require 'color_lib/css'

module TestColorLib
  class TestColorLib < Test::Unit::TestCase
    def setup
      Kernel.module_eval do
        alias old_warn warn

        def warn(message)
          $last_warn = message
        end
      end
    end

    def teardown
      Kernel.module_eval do
        undef warn
        alias warn old_warn
        undef old_warn
      end
    end

    def test_const
      $last_warn = nil
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::AliceBlue)
      assert_equal("ColorLib::AliceBlue has been deprecated. Use ColorLib::RGB::AliceBlue instead.", $last_warn)

      $last_warn = nil # Do this twice to make sure it always happens...
      assert(ColorLib::AliceBlue)
      assert_equal("ColorLib::AliceBlue has been deprecated. Use ColorLib::RGB::AliceBlue instead.", $last_warn)

      $last_warn = nil
      assert_equal(ColorLib::COLOR_VERSION, ColorLib::VERSION)
      assert_equal("ColorLib::VERSION has been deprecated. Use ColorLib::COLOR_VERSION instead.", $last_warn)

      $last_warn = nil
      assert_equal(ColorLib::COLOR_VERSION, ColorLib::COLOR_TOOLS_VERSION)
      assert_equal("ColorLib::COLOR_TOOLS_VERSION has been deprecated. Use ColorLib::COLOR_VERSION instead.", $last_warn)

      $last_warn = nil
      assert(ColorLib::COLOR_VERSION)
      assert_nil($last_warn)
      assert(ColorLib::COLOR_EPSILON)
      assert_nil($last_warn)

      assert_raises(NameError) { assert(ColorLib::MISSING_VALUE) }
    end

    def test_normalize
      (1..10).each do |i|
        assert_equal(0.0, ColorLib.normalize(-7 * i))
        assert_equal(0.0, ColorLib.normalize(-7 / i))
        assert_equal(0.0, ColorLib.normalize(0 - i))
        assert_equal(1.0, ColorLib.normalize(255 + i))
        assert_equal(1.0, ColorLib.normalize(256 * i))
        assert_equal(1.0, ColorLib.normalize(65536 / i))
      end
      (0..255).each do |i|
        assert_in_delta(i / 255.0, ColorLib.normalize(i / 255.0),
                        1e-2)
      end
    end

    def test_normalize_range
      assert_equal(0, ColorLib.normalize_8bit(-1))
      assert_equal(0, ColorLib.normalize_8bit(0))
      assert_equal(127, ColorLib.normalize_8bit(127))
      assert_equal(172, ColorLib.normalize_8bit(172))
      assert_equal(255, ColorLib.normalize_8bit(255))
      assert_equal(255, ColorLib.normalize_8bit(256))

      assert_equal(0, ColorLib.normalize_16bit(-1))
      assert_equal(0, ColorLib.normalize_16bit(0))
      assert_equal(127, ColorLib.normalize_16bit(127))
      assert_equal(172, ColorLib.normalize_16bit(172))
      assert_equal(255, ColorLib.normalize_16bit(255))
      assert_equal(256, ColorLib.normalize_16bit(256))
      assert_equal(65535, ColorLib.normalize_16bit(65535))
      assert_equal(65535, ColorLib.normalize_16bit(66536))

      assert_equal(-100, ColorLib.normalize_to_range(-101, -100..100))
      assert_equal(-100, ColorLib.normalize_to_range(-100.5, -100..100))
      assert_equal(-100, ColorLib.normalize_to_range(-100, -100..100))
      assert_equal(-100, ColorLib.normalize_to_range(-100.0, -100..100))
      assert_equal(-99.5, ColorLib.normalize_to_range(-99.5, -100..100))
      assert_equal(-50, ColorLib.normalize_to_range(-50, -100..100))
      assert_equal(-50.5, ColorLib.normalize_to_range(-50.5, -100..100))
      assert_equal(0, ColorLib.normalize_to_range(0, -100..100))
      assert_equal(50, ColorLib.normalize_to_range(50, -100..100))
      assert_equal(50.5, ColorLib.normalize_to_range(50.5, -100..100))
      assert_equal(99, ColorLib.normalize_to_range(99, -100..100))
      assert_equal(99.5, ColorLib.normalize_to_range(99.5, -100..100))
      assert_equal(100, ColorLib.normalize_to_range(100, -100..100))
      assert_equal(100, ColorLib.normalize_to_range(100.0, -100..100))
      assert_equal(100, ColorLib.normalize_to_range(100.5, -100..100))
      assert_equal(100, ColorLib.normalize_to_range(101, -100..100))
    end

    def test_new
      $last_warn = nil
      c = ColorLib.new("#fff")
      assert_kind_of(ColorLib::HSL, c)
      assert_equal(ColorLib::RGB::White.to_hsl, c)
      assert_equal("ColorLib.new has been deprecated. Use ColorLib::RGB.new instead.", $last_warn)

      $last_warn = nil
      c = ColorLib.new([0, 0, 0])
      assert_kind_of(ColorLib::HSL, c)
      assert_equal(ColorLib::RGB::Black.to_hsl, c)
      assert_equal("ColorLib.new has been deprecated. Use ColorLib::RGB.new instead.", $last_warn)

      $last_warn = nil
      c = ColorLib.new([10, 20, 30], :hsl)
      assert_kind_of(ColorLib::HSL, c)
      assert_equal(ColorLib::HSL.new(10, 20, 30), c)
      assert_equal("ColorLib.new has been deprecated. Use ColorLib::HSL.new instead.", $last_warn)

      $last_warn = nil
      c = ColorLib.new([10, 20, 30, 40], :cmyk)
      assert_kind_of(ColorLib::HSL, c)
      assert_equal(ColorLib::CMYK.new(10, 20, 30, 40).to_hsl, c)
      assert_equal("ColorLib.new has been deprecated. Use ColorLib::CMYK.new instead.", $last_warn)
    end
  end
end
