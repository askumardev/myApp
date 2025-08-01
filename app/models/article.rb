class Article < ApplicationRecord
  has_one_attached :image
  #has_many :comments

  attr_accessor :remove_image

  after_save :purge_image, if: :remove_image

  validates :name, presence: true
  validates :comment, presence: true
  private def purge_image
    image.purge_later
  end
end
