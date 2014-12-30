#--
# ColorLib
# Colour management with Ruby
# http://rubyforge.org/projects/color
#
#
# Licensed under a MIT-style licence. See Licence.txt in the main
# distribution for full licensing information.
#
# Copyright (c) 2005 - 2010 Austin Ziegler and Matt Lyon
#++

# This namespace contains some RGB metallic colours suggested by Jim Freeze.
module ColorLib::RGB::Metallic
  Aluminum    = ColorLib::RGB.new(0x99, 0x99, 0x99)
  CoolCopper  = ColorLib::RGB.new(0xd9, 0x87, 0x19)
  Copper      = ColorLib::RGB.new(0xb8, 0x73, 0x33)
  Iron        = ColorLib::RGB.new(0x4c, 0x4c, 0x4c)
  Lead        = ColorLib::RGB.new(0x19, 0x19, 0x19)
  Magnesium   = ColorLib::RGB.new(0xb3, 0xb3, 0xb3)
  Mercury     = ColorLib::RGB.new(0xe6, 0xe6, 0xe6)
  Nickel      = ColorLib::RGB.new(0x80, 0x80, 0x80)
  PolySilicon = ColorLib::RGB.new(0x60, 0x00, 0x00)
  Poly        = PolySilicon
  Silver      = ColorLib::RGB.new(0xcc, 0xcc, 0xcc)
  Steel       = ColorLib::RGB.new(0x66, 0x66, 0x66)
  Tin         = ColorLib::RGB.new(0x7f, 0x7f, 0x7f)
  Tungsten    = ColorLib::RGB.new(0x33, 0x33, 0x33)

  Aluminum.freeze
  CoolCopper.freeze
  Copper.freeze
  Iron.freeze
  Lead.freeze
  Magnesium.freeze
  Mercury.freeze
  Nickel.freeze
  PolySilicon.freeze
  Silver.freeze
  Steel.freeze
  Tin.freeze
  Tungsten.freeze
end
