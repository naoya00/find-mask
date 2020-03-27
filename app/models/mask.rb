class Mask < ApplicationRecord
  belongs_to :shop

  #バリデーション記述
  validates :name, presence: true
  validates :stock, presence: true

  mount_uploader :image, ImageUploader
end
