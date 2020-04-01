class Pic < ApplicationRecord
  validates(:animalType, presence: true)
  validates(:picInfo, presence: true)
  VALID_PIC_REGEX = /\A[\w+\-.]+\.+(jpeg|jpg|png|gif|bmp|webp|tiff)+\z/i
  validates(:picInfo,  format: {with: VALID_PIC_REGEX})
end
