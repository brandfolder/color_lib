require 'minitest/autorun'
require 'test/unit/assertions'
require 'color_lib'
require 'color_lib/css'

module TestColorLib
  class TestCSS < Minitest::Test
    include Test::Unit::Assertions

    def test_index
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS[:aliceblue])
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS["AliceBlue"])
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS["aliceBlue"])
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS["aliceblue"])
      assert_equal(ColorLib::RGB::AliceBlue, ColorLib::CSS[:AliceBlue])
    end
  end
end
