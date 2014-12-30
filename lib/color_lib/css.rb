require 'color_lib'
# This namespace contains some CSS colour names.
module ColorLib::CSS
  # Returns the RGB colour for name or +nil+ if the name is not valid.
  def self.[](name)
    @colors[name.to_s.downcase.to_sym]
  end

  @colors = {}
  ColorLib::RGB.constants.each do |const|
    next if const == "PDF_FORMAT_STR"
    next if const == "Metallic"
    @colors[const.downcase.to_sym] ||= ColorLib::RGB.const_get(const)
  end
end
