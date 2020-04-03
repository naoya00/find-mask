require 'rails_helper'
describe Comment do
  describe '#create' do

    it "nicknameがない場合は登録できないこと" do
    comment = build(:comment,nickname: "")
     comment.valid?
     expect(comment.errors[:nickname]).to include("を入力してください")
    end

    it "textがない場合は登録できないこと" do
      comment = build(:comment,text: "")
       comment.valid?
       expect(comment.errors[:text]).to include("を入力してください")
      end

      it "全ての必須項目が入力されている場合投稿できる" do
        comment = build(:comment)
        expect(comment).to be_valid
      end

  end
end