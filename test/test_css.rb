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
require 'color/css'

module TestColorLib
  class TestCSS < Test::Unit::TestCase
    def test_index
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS[:aliceblue])
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS["AliceBlue"])
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS["aliceBlue"])
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS["aliceblue"])
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS[:AliceBlue])
    end
  end
end
