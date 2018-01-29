class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :category


  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("content LIKE ?", "%#{search}%")
  end

end
