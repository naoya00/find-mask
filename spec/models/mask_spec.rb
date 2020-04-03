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

      

  end
end