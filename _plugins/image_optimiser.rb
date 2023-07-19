Jekyll::Hooks.register :site, :after_init do |_site|
  require_relative '../optimise_images.rb'
end

