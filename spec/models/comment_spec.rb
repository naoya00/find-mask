require 'rails_helper'

describe Comment do
  describe '#create' do

    it "店舗名が空では登録できない" do
      comment = build(:comment,nickname: "")
      comment.valid?
      expect(comment.errors[:nickname]).to include("を入力してください")
    end

  end
end