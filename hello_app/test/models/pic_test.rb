require 'test_helper'

class PicTest < ActiveSupport::TestCase

  def setup
     @pic = Pic.new(animalType: "some animal", picInfo: "pIc.jpg")
  end

  test "should be valid" do
    assert @pic.valid?
  end

  test "animalType should be present" do
    @pic.animalType = "   "
    assert_not @pic.valid?
  end

  test "picInfo should be present" do
    @pic.picInfo = ""
    assert_not @pic.valid?
  end

  test "picInfo validation should rejet invalid picInfos" do
    invalid_picinfos = %w[noending wrongending.pdf comma,png .png]
    invalid_picinfos.each do |invalid_picinfo|
      @pic.picInfo = invalid_picinfo
      assert_not @pic.valid?, "#{invalid_picinfo.inspect} should be invalid"
    end
  end

  test "picInfo validation should accept valid picInfos" do
    valid_picinfos = %w[12.jpg 2.jpeg 3.png 4.gif 5.bmp 6.webp 7.tiff -.tiff fjekw.ew-som.jpeg]
    valid_picinfos.each do |valid_picinfo|
      @pic.picInfo = valid_picinfo
      assert @pic.valid?, "#{valid_picinfo.inspect} should be valid"
    end
  end

end
