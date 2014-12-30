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

class ColorLib::RGB
  AliceBlue             = ColorLib::RGB.new(0xf0, 0xf8, 0xff)
  AntiqueWhite          = ColorLib::RGB.new(0xfa, 0xeb, 0xd7)
  Aqua                  = ColorLib::RGB.new(0x00, 0xff, 0xff)
  Aquamarine            = ColorLib::RGB.new(0x7f, 0xff, 0xd4)
  Azure                 = ColorLib::RGB.new(0xf0, 0xff, 0xff)
  Beige                 = ColorLib::RGB.new(0xf5, 0xf5, 0xdc)
  Bisque                = ColorLib::RGB.new(0xff, 0xe4, 0xc4)
  Black                 = ColorLib::RGB.new(0, 0, 0)
  BlanchedAlmond        = ColorLib::RGB.new(0xff, 0xeb, 0xcd)
  Blue                  = ColorLib::RGB.new(0x00, 0x00, 0xff)
  BlueViolet            = ColorLib::RGB.new(0x8a, 0x2b, 0xe2)
  Brown                 = ColorLib::RGB.new(0xa5, 0x2a, 0x2a)
  BurlyWood             = ColorLib::RGB.new(0xde, 0xb8, 0x87)
  Burlywood             = BurlyWood
  CadetBlue             = ColorLib::RGB.new(0x5f, 0x9e, 0xa0)
  Carnation             = ColorLib::RGB.new(0xff, 0x5e, 0xd0)
  Cayenne               = ColorLib::RGB.new(0x8d, 0x00, 0x00)
  Chartreuse            = ColorLib::RGB.new(0x7f, 0xff, 0x00)
  Chocolate             = ColorLib::RGB.new(0xd2, 0x69, 0x1e)
  Coral                 = ColorLib::RGB.new(0xff, 0x7f, 0x50)
  CornflowerBlue        = ColorLib::RGB.new(0x64, 0x95, 0xed)
  Cornsilk              = ColorLib::RGB.new(0xff, 0xf8, 0xdc)
  Crimson               = ColorLib::RGB.new(0xdc, 0x14, 0x3c)
  Cyan                  = ColorLib::RGB.new(0x00, 0xff, 0xff)
  DarkBlue              = ColorLib::RGB.new(0x00, 0x00, 0x8b)
  DarkCyan              = ColorLib::RGB.new(0x00, 0x8b, 0x8b)
  DarkGoldenRod         = ColorLib::RGB.new(0xb8, 0x86, 0x0b)
  DarkGoldenrod         = DarkGoldenRod
  DarkGray              = ColorLib::RGB.new(0xa9, 0xa9, 0xa9)
  DarkGreen             = ColorLib::RGB.new(0x00, 0x64, 0x00)
  DarkGrey              = DarkGray
  DarkKhaki             = ColorLib::RGB.new(0xbd, 0xb7, 0x6b)
  DarkMagenta           = ColorLib::RGB.new(0x8b, 0x00, 0x8b)
  DarkOliveGreen        = ColorLib::RGB.new(0x55, 0x6b, 0x2f)
  DarkOrange            = ColorLib::RGB.new(0xff, 0x8c, 0x00)
  DarkOrchid            = ColorLib::RGB.new(0x99, 0x32, 0xcc)
  DarkRed               = ColorLib::RGB.new(0x8b, 0x00, 0x00)
  DarkSalmon            = ColorLib::RGB.new(0xe9, 0x96, 0x7a)
  DarkSeaGreen          = ColorLib::RGB.new(0x8f, 0xbc, 0x8f)
  DarkSlateBlue         = ColorLib::RGB.new(0x48, 0x3d, 0x8b)
  DarkSlateGray         = ColorLib::RGB.new(0x2f, 0x4f, 0x4f)
  DarkSlateGrey         = DarkSlateGray
  DarkTurquoise         = ColorLib::RGB.new(0x00, 0xce, 0xd1)
  DarkViolet            = ColorLib::RGB.new(0x94, 0x00, 0xd3)
  DarkoliveGreen        = DarkOliveGreen
  Darkorange            = ColorLib::RGB.new(0xff, 0x8c, 0x00)
  Darksalmon            = DarkSalmon
  DeepPink              = ColorLib::RGB.new(0xff, 0x14, 0x93)
  DeepSkyBlue           = ColorLib::RGB.new(0x00, 0xbf, 0xbf)
  DimGray               = ColorLib::RGB.new(0x69, 0x69, 0x69)
  DimGrey               = DimGray
  DodgerBlue            = ColorLib::RGB.new(0x1e, 0x90, 0xff)
  Feldspar              = ColorLib::RGB.new(0xd1, 0x92, 0x75)
  FireBrick             = ColorLib::RGB.new(0xb2, 0x22, 0x22)
  Firebrick             = FireBrick
  FloralWhite           = ColorLib::RGB.new(0xff, 0xfa, 0xf0)
  ForestGreen           = ColorLib::RGB.new(0x22, 0x8b, 0x22)
  Fuchsia               = ColorLib::RGB.new(0xff, 0x00, 0xff)
  Gainsboro             = ColorLib::RGB.new(0xdc, 0xdc, 0xdc)
  GhostWhite            = ColorLib::RGB.new(0xf8, 0xf8, 0xff)
  Gold                  = ColorLib::RGB.new(0xff, 0xd7, 0x00)
  GoldenRod             = ColorLib::RGB.new(0xda, 0xa5, 0x20)
  Goldenrod             = GoldenRod
  Gray                  = ColorLib::RGB.new(0x80, 0x80, 0x80)
  Gray10                = ColorLib::RGB.from_percentage(10, 10, 10)
  Gray20                = ColorLib::RGB.from_percentage(20, 20, 20)
  Gray30                = ColorLib::RGB.from_percentage(30, 30, 30)
  Gray40                = ColorLib::RGB.from_percentage(40, 40, 40)
  Gray50                = ColorLib::RGB.from_percentage(50, 50, 50)
  Gray60                = ColorLib::RGB.from_percentage(60, 60, 60)
  Gray70                = ColorLib::RGB.from_percentage(70, 70, 70)
  Gray80                = ColorLib::RGB.from_percentage(80, 80, 80)
  Gray90                = ColorLib::RGB.from_percentage(90, 90, 90)
  Green                 = ColorLib::RGB.new(0x00, 0x80, 0x00)
  GreenYellow           = ColorLib::RGB.new(0xad, 0xff, 0x2f)
  Grey                  = Gray
  Grey10                = Gray10
  Grey20                = Gray20
  Grey30                = Gray30
  Grey40                = Gray40
  Grey50                = Gray50
  Grey60                = Gray60
  Grey70                = Gray70
  Grey80                = Gray80
  Grey90                = Gray90
  HoneyDew              = ColorLib::RGB.new(0xf0, 0xff, 0xf0)
  Honeydew              = HoneyDew
  HotPink               = ColorLib::RGB.new(0xff, 0x69, 0xb4)
  IndianRed             = ColorLib::RGB.new(0xcd, 0x5c, 0x5c)
  Indigo                = ColorLib::RGB.new(0x4b, 0x00, 0x82)
  Ivory                 = ColorLib::RGB.new(0xff, 0xff, 0xf0)
  Khaki                 = ColorLib::RGB.new(0xf0, 0xe6, 0x8c)
  Lavender              = ColorLib::RGB.new(0xe6, 0xe6, 0xfa)
  LavenderBlush         = ColorLib::RGB.new(0xff, 0xf0, 0xf5)
  LawnGreen             = ColorLib::RGB.new(0x7c, 0xfc, 0x00)
  LemonChiffon          = ColorLib::RGB.new(0xff, 0xfa, 0xcd)
  LightBlue             = ColorLib::RGB.new(0xad, 0xd8, 0xe6)
  LightCoral            = ColorLib::RGB.new(0xf0, 0x80, 0x80)
  LightCyan             = ColorLib::RGB.new(0xe0, 0xff, 0xff)
  LightGoldenRodYellow  = ColorLib::RGB.new(0xfa, 0xfa, 0xd2)
  LightGoldenrodYellow  = LightGoldenRodYellow
  LightGray             = ColorLib::RGB.new(0xd3, 0xd3, 0xd3)
  LightGreen            = ColorLib::RGB.new(0x90, 0xee, 0x90)
  LightGrey             = LightGray
  LightPink             = ColorLib::RGB.new(0xff, 0xb6, 0xc1)
  LightSalmon           = ColorLib::RGB.new(0xff, 0xa0, 0x7a)
  LightSeaGreen         = ColorLib::RGB.new(0x20, 0xb2, 0xaa)
  LightSkyBlue          = ColorLib::RGB.new(0x87, 0xce, 0xfa)
  LightSlateBlue        = ColorLib::RGB.new(0x84, 0x70, 0xff)
  LightSlateGray        = ColorLib::RGB.new(0x77, 0x88, 0x99)
  LightSlateGrey        = LightSlateGray
  LightSteelBlue        = ColorLib::RGB.new(0xb0, 0xc4, 0xde)
  LightYellow           = ColorLib::RGB.new(0xff, 0xff, 0xe0)
  Lightsalmon           = LightSalmon
  LightsteelBlue        = LightSteelBlue
  Lime                  = ColorLib::RGB.new(0x00, 0xff, 0x00)
  LimeGreen             = ColorLib::RGB.new(0x32, 0xcd, 0x32)
  Linen                 = ColorLib::RGB.new(0xfa, 0xf0, 0xe6)
  Magenta               = ColorLib::RGB.new(0xff, 0x00, 0xff)
  Maroon                = ColorLib::RGB.new(0x80, 0x00, 0x00)
  MediumAquaMarine      = ColorLib::RGB.new(0x66, 0xcd, 0xaa)
  MediumAquamarine      = MediumAquaMarine
  MediumBlue            = ColorLib::RGB.new(0x00, 0x00, 0xcd)
  MediumOrchid          = ColorLib::RGB.new(0xba, 0x55, 0xd3)
  MediumPurple          = ColorLib::RGB.new(0x93, 0x70, 0xdb)
  MediumSeaGreen        = ColorLib::RGB.new(0x3c, 0xb3, 0x71)
  MediumSlateBlue       = ColorLib::RGB.new(0x7b, 0x68, 0xee)
  MediumSpringGreen     = ColorLib::RGB.new(0x00, 0xfa, 0x9a)
  MediumTurquoise       = ColorLib::RGB.new(0x48, 0xd1, 0xcc)
  MediumVioletRed       = ColorLib::RGB.new(0xc7, 0x15, 0x85)
  MidnightBlue          = ColorLib::RGB.new(0x19, 0x19, 0x70)
  MintCream             = ColorLib::RGB.new(0xf5, 0xff, 0xfa)
  MistyRose             = ColorLib::RGB.new(0xff, 0xe4, 0xe1)
  Moccasin              = ColorLib::RGB.new(0xff, 0xe4, 0xb5)
  NavajoWhite           = ColorLib::RGB.new(0xff, 0xde, 0xad)
  Navy                  = ColorLib::RGB.new(0x00, 0x00, 0x80)
  OldLace               = ColorLib::RGB.new(0xfd, 0xf5, 0xe6)
  Olive                 = ColorLib::RGB.new(0x80, 0x80, 0x00)
  OliveDrab             = ColorLib::RGB.new(0x6b, 0x8e, 0x23)
  Olivedrab             = OliveDrab
  Orange                = ColorLib::RGB.new(0xff, 0xa5, 0x00)
  OrangeRed             = ColorLib::RGB.new(0xff, 0x45, 0x00)
  Orchid                = ColorLib::RGB.new(0xda, 0x70, 0xd6)
  PaleGoldenRod         = ColorLib::RGB.new(0xee, 0xe8, 0xaa)
  PaleGoldenrod         = PaleGoldenRod
  PaleGreen             = ColorLib::RGB.new(0x98, 0xfb, 0x98)
  PaleTurquoise         = ColorLib::RGB.new(0xaf, 0xee, 0xee)
  PaleVioletRed         = ColorLib::RGB.new(0xdb, 0x70, 0x93)
  PapayaWhip            = ColorLib::RGB.new(0xff, 0xef, 0xd5)
  PeachPuff             = ColorLib::RGB.new(0xff, 0xda, 0xb9)
  Peachpuff             = PeachPuff
  Peru                  = ColorLib::RGB.new(0xcd, 0x85, 0x3f)
  Pink                  = ColorLib::RGB.new(0xff, 0xc0, 0xcb)
  Plum                  = ColorLib::RGB.new(0xdd, 0xa0, 0xdd)
  PowderBlue            = ColorLib::RGB.new(0xb0, 0xe0, 0xe6)
  Purple                = ColorLib::RGB.new(0x80, 0x00, 0x80)
  Red                   = ColorLib::RGB.new(0xff, 0x00, 0x00)
  RosyBrown             = ColorLib::RGB.new(0xbc, 0x8f, 0x8f)
  RoyalBlue             = ColorLib::RGB.new(0x41, 0x69, 0xe1)
  SaddleBrown           = ColorLib::RGB.new(0x8b, 0x45, 0x13)
  Salmon                = ColorLib::RGB.new(0xfa, 0x80, 0x72)
  SandyBrown            = ColorLib::RGB.new(0xf4, 0xa4, 0x60)
  SeaGreen              = ColorLib::RGB.new(0x2e, 0x8b, 0x57)
  SeaShell              = ColorLib::RGB.new(0xff, 0xf5, 0xee)
  Seashell              = SeaShell
  Sienna                = ColorLib::RGB.new(0xa0, 0x52, 0x2d)
  Silver                = ColorLib::RGB.new(0xc0, 0xc0, 0xc0)
  SkyBlue               = ColorLib::RGB.new(0x87, 0xce, 0xeb)
  SlateBlue             = ColorLib::RGB.new(0x6a, 0x5a, 0xcd)
  SlateGray             = ColorLib::RGB.new(0x70, 0x80, 0x90)
  SlateGrey             = SlateGray
  Snow                  = ColorLib::RGB.new(0xff, 0xfa, 0xfa)
  SpringGreen           = ColorLib::RGB.new(0x00, 0xff, 0x7f)
  SteelBlue             = ColorLib::RGB.new(0x46, 0x82, 0xb4)
  Tan                   = ColorLib::RGB.new(0xd2, 0xb4, 0x8c)
  Teal                  = ColorLib::RGB.new(0x00, 0x80, 0x80)
  Thistle               = ColorLib::RGB.new(0xd8, 0xbf, 0xd8)
  Tomato                = ColorLib::RGB.new(0xff, 0x63, 0x47)
  Turquoise             = ColorLib::RGB.new(0x40, 0xe0, 0xd0)
  Violet                = ColorLib::RGB.new(0xee, 0x82, 0xee)
  VioletRed             = ColorLib::RGB.new(0xd0, 0x20, 0x90)
  Wheat                 = ColorLib::RGB.new(0xf5, 0xde, 0xb3)
  White                 = ColorLib::RGB.new(0xff, 0xff, 0xff)
  WhiteSmoke            = ColorLib::RGB.new(0xf5, 0xf5, 0xf5)
  Yellow                = ColorLib::RGB.new(0xff, 0xff, 0x00)
  YellowGreen           = ColorLib::RGB.new(0x9a, 0xcd, 0x32)

  AliceBlue.freeze
  AntiqueWhite.freeze
  Aqua.freeze
  Aquamarine.freeze
  Azure.freeze
  Beige.freeze
  Bisque.freeze
  Black.freeze
  BlanchedAlmond.freeze
  Blue.freeze
  BlueViolet.freeze
  Brown.freeze
  Burlywood.freeze
  CadetBlue.freeze
  Cayenne.freeze
  Carnation.freeze
  Chartreuse.freeze
  Chocolate.freeze
  Coral.freeze
  CornflowerBlue.freeze
  Cornsilk.freeze
  Crimson.freeze
  Cyan.freeze
  DarkBlue.freeze
  DarkCyan.freeze
  DarkGoldenrod.freeze
  DarkGray.freeze
  DarkGreen.freeze
  DarkKhaki.freeze
  DarkMagenta.freeze
  DarkoliveGreen.freeze
  Darkorange.freeze
  DarkOrchid.freeze
  DarkRed.freeze
  Darksalmon.freeze
  DarkSeaGreen.freeze
  DarkSlateBlue.freeze
  DarkSlateGray.freeze
  DarkTurquoise.freeze
  DarkViolet.freeze
  DeepPink.freeze
  DeepSkyBlue.freeze
  DimGray.freeze
  DodgerBlue.freeze
  Feldspar.freeze
  Firebrick.freeze
  FloralWhite.freeze
  ForestGreen.freeze
  Fuchsia.freeze
  Gainsboro.freeze
  GhostWhite.freeze
  Gold.freeze
  Goldenrod.freeze
  Gray.freeze
  Green.freeze
  GreenYellow.freeze
  Honeydew.freeze
  HotPink.freeze
  IndianRed.freeze
  Indigo.freeze
  Ivory.freeze
  Khaki.freeze
  Lavender.freeze
  LavenderBlush.freeze
  LawnGreen.freeze
  LemonChiffon.freeze
  LightBlue.freeze
  LightCoral.freeze
  LightCyan.freeze
  LightGoldenrodYellow.freeze
  LightGray.freeze
  LightGreen.freeze
  LightPink.freeze
  Lightsalmon.freeze
  LightSeaGreen.freeze
  LightSkyBlue.freeze
  LightSlateBlue.freeze
  LightSlateGray.freeze
  LightsteelBlue.freeze
  LightYellow.freeze
  Lime.freeze
  LimeGreen.freeze
  Linen.freeze
  Magenta.freeze
  Maroon.freeze
  MediumAquamarine.freeze
  MediumBlue.freeze
  MediumOrchid.freeze
  MediumPurple.freeze
  MediumSeaGreen.freeze
  MediumSlateBlue.freeze
  MediumSpringGreen.freeze
  MediumTurquoise.freeze
  MediumVioletRed.freeze
  MidnightBlue.freeze
  MintCream.freeze
  MistyRose.freeze
  Moccasin.freeze
  NavajoWhite.freeze
  Navy.freeze
  OldLace.freeze
  Olive.freeze
  Olivedrab.freeze
  Orange.freeze
  OrangeRed.freeze
  Orchid.freeze
  PaleGoldenrod.freeze
  PaleGreen.freeze
  PaleTurquoise.freeze
  PaleVioletRed.freeze
  PapayaWhip.freeze
  Peachpuff.freeze
  Peru.freeze
  Pink.freeze
  Plum.freeze
  PowderBlue.freeze
  Purple.freeze
  Red.freeze
  RosyBrown.freeze
  RoyalBlue.freeze
  SaddleBrown.freeze
  Salmon.freeze
  SandyBrown.freeze
  SeaGreen.freeze
  Seashell.freeze
  Sienna.freeze
  Silver.freeze
  SkyBlue.freeze
  SlateBlue.freeze
  SlateGray.freeze
  Snow.freeze
  SpringGreen.freeze
  SteelBlue.freeze
  Tan.freeze
  Teal.freeze
  Thistle.freeze
  Tomato.freeze
  Turquoise.freeze
  Violet.freeze
  VioletRed.freeze
  Wheat.freeze
  White.freeze
  WhiteSmoke.freeze
  Yellow.freeze
  YellowGreen.freeze
  Gray10.freeze
  Gray20.freeze
  Gray30.freeze
  Gray40.freeze
  Gray50.freeze
  Gray60.freeze
  Gray70.freeze
  Gray80.freeze
  Gray90.freeze
end
