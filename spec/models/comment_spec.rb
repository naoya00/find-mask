require 'rails_helper'

describe Comment do
  describe '#create' do

    it "ニックネームが空では登録できない" do
      comment = build(:comment,nickname: "")
      comment.valid?
      expect(comment.errors[:nickname]).to include("を入力してください")
    end

  end
end