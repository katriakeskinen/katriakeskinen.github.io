
require 'image_optim'
require 'mini_magick'
require 'fileutils'

image_optim = ImageOptim.new(
  pngout: false,
  pngcrush: false,
  advpng: false,
  optipng: false,
  pngquant: false,
  oxipng: false,
  jhead: false,
  gifsicle: false,
  svgo: false
  )

Dir.glob('images/*').each do |image_path|
  image = MiniMagick::Image.open(image_path)

  # Resize the image
  max_width = 1000 # change this to the maximum width you want
  if image.width > max_width
    image.resize "#{max_width}x"
  end

  optimized_image_path = image_path.gsub('images/', 'assets/img/')
  FileUtils.mkdir_p(File.dirname(optimized_image_path))

  # Write out the resized image
  image.write optimized_image_path

  # Optimize the resized image
  image_optim.optimize_image!(optimized_image_path)
end

