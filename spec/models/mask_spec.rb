require 'rails_helper'
describe Mask do
  describe '#create' do

    it "マスク名称が空の場合は登録できないこと" do
    mask = build(:mask,name: "")
    mask.valid?
    expect(mask.errors[:name]).to include("を入力してください")
    end

    it "在庫数が空の場合は登録できないこと" do
      mask = build(:mask,stock: "")
      mask.valid?
      expect(mask.errors[:stock]).to include("を入力してください")
      end

      it "全ての必須項目が入力されている場合投稿できる" do
        mask = build(:mask)
        expect(mask).to be_valid
      end

  end
end