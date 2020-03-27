class Comment < ApplicationRecord

  #バリデーション記述
  validates :nickname, presence: true
  validates :text, presence: true
end
