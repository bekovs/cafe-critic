class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :category
  has_many :reviews

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end

  validates :title, presence: true,
            length: { maximum: 50 }

  validates :image, presence: true

end
