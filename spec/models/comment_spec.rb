require 'rails_helper'
describe Comment do
  describe '#create' do
    it "nicknameがない場合は登録できないこと" do
    comment = build(:comment,nickname: "")
     comment.valid?
     expect(comment.errors[:nickname]).to include("を入力してください")
    end
  end
end