class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

       has_many :posts
       has_many :masks

       def self.search(search)
        if search
          Shop.where('text LIKE(?)', "%#{search}%")
        else
          Shop.all
        end
      end

   mount_uploader :image, ImageUploader
end
