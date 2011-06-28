module Sprite
  class Source
    def initialize(source)
      @source = source
    end
    def image_filename
      @source.is_a?(Hash) ? @source['image'] : @source
    end
    def additional_properties
      @source.is_a?(Hash) ? @source.reject {|key, value| key == 'image'} : {}
    end
  end
end