class Post < ApplicationRecord
  belongs_to :shop

  #バリデーション記述
  validates :content, presence: true
end
