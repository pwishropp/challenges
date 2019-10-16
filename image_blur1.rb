class Image

  def initialize(photo)
    @photo = photo
  end

  def output_image
    @photo.each do |x|
      puts x.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
])

image.output_image