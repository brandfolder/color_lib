# ColorLib [![Build Status](https://travis-ci.org/brandfolder/color_lib.svg?branch=master)](https://travis-ci.org/brandfolder/color_lib)

A lib for colors.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'color_lib'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install color_lib## Contributing

Usage
```ruby
ColorLib::RGB.new(r, g, b).html
ColorLib::RGB.new(60, 60, 60).html
=> "#3C3C3C"

ColorLib::CMYK.new(c, m, y, k).html
ColorLib::CMYK.new(68, 62, 61, 50).html
=> "#3C3C3C"

ColorLib::Pantone.from_value(pantone).html
ColorLib::Pantone.from_value('103').html
=> "#CAAD00"

ColorLib::Pantone.match(pantone)
ColorLib::Pantone.match('ABCDEF103')
=> false
```
    

1. Fork it ( https://github.com/brandfolder/color_lib/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
