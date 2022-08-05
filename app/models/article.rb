class Article < ApplicationRecord
  has_one_attached :image
  #has_many :comments

  attr_accessor :remove_image

  after_save :purge_image, if: :remove_image
  private def purge_image
    image.purge_later
  end
end
