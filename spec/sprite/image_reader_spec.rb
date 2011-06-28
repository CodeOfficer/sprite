require File.dirname(__FILE__) + '/../spec_helper'

describe Sprite::ImageReader do
  before(:all) do
    @image_paths = {
      :good => "#{Sprite.root}/resources/images/topics/good-topic.gif",
      :mid => "#{Sprite.root}/resources/images/topics/mid-topic.gif"
    }
  end

  context "read" do
    it "should get a image from disk" do
      source = Sprite::Source.new(@image_paths[:good])
      Sprite::ImageReader.read(source).class.name.should == 'Magick::Image'
    end
  end
end