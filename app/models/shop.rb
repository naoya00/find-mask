class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #バリデーション記述
  validates :name, presence: true
  validates :image, presence: true
  validates :address, presence: true
  validates :station, presence: true
  validates :station_walk, presence: true
  validates :shop_holiday, presence: true
  validates :shop_time, presence: true

  #アソシエーション
  has_many :posts
  has_many :masks


  def self.search(search)
    if search
      Shop.where('station LIKE(?)', "%#{search}%")
    else
      Shop.all
    end
  end

   mount_uploader :image, ImageUploader
end
