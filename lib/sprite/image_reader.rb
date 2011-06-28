module Sprite
  class ImageReader
    def self.read(source)
      # avoid loading rmagick till the last possible moment
      begin
        require "RMagick"
      rescue LoadError
        require 'rmagick'
      end

      Magick::Image::read(source.image_filename).first
    end
  end
end
