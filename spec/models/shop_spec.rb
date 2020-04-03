require 'rails_helper'
describe Shop do
  describe '#create' do
    it "emailが空では登録できない" do
      shop = build(:shop, email: "")
      shop.valid?
     expect(shop.errors[:email]).to include("を入力してください")
    end

    it "passwordが空では登録できない" do
      shop = build(:shop, password: "")
      shop.valid?
     expect(shop.errors[:password]).to include("を入力してください")
    end

    it "店舗名が空では登録できない" do
      shop = build(:shop, name: "")
      shop.valid?
     expect(shop.errors[:name]).to include("を入力してください")
    end

    it "住所が空では登録できない" do
      shop = build(:shop, address: "")
      shop.valid?
     expect(shop.errors[:address]).to include("を入力してください")
    end

    it "最寄りの駅名が空では登録できない" do
      shop = build(:shop, station: "")
      shop.valid?
     expect(shop.errors[:station]).to include("を入力してください")
    end

    it "最寄りの駅からの徒歩時間が空では登録できない" do
      shop = build(:shop, station_walk: "")
      shop.valid?
     expect(shop.errors[:station_walk]).to include("を入力してください")
    end

    it "定休日が空では登録できない" do
      shop = build(:shop, shop_holiday: "")
      shop.valid?
     expect(shop.errors[:shop_holiday]).to include("を入力してください")
    end

    it "営業時間が空では登録できない" do
      shop = build(:shop, shop_time: "")
      shop.valid?
     expect(shop.errors[:shop_time]).to include("を入力してください")
    end

    it "全ての必須項目が入力されている場合投稿できる" do
      shop = build(:shop)
      expect(shop).to be_valid
    end

  end
end