FactoryBot.define do
  factory :shop do
    id                    {"1"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    name                  {"ドラックストア"}
    image                 {File.open("#{Rails.root}/spec/fixtures/hand.jpg")}
    address               {"東京都渋谷区道玄坂XX丁目XX"}
    station               {"渋谷"}
    station_walk          {"4"}
    shop_holiday          {"水曜日"}
    shop_time             {"AM10:00~PM10:00"}
  end
end
