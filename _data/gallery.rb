require 'pathname'
require 'yaml'

template =  Dir.glob('../img/gallery/large/*')
  .map {|l| Pathname.new(l).basename }
  .map { |filename| { 'image_thumb' => filename.to_s, 'image_large' => filename.to_s, 'image_alt' => 'WV Golf'  } }
  .to_yaml


File.open('./gallery.yml', 'w') do |f|
  f.write template
  f.close
end
