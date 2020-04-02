FactoryBot.define do

  factory :shop do
    id                    {"1"}
    name                  {"ドラックストア"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    image                 {"外観写真.jpg"}
    address               {"東京都渋谷区道玄坂XX丁目XXXX−XX"}
    station               {"渋谷"}
    station_walk          {"5"}
    shop_holiday          {"水曜日"}
    shop_time             {"AM10:00~PM10:00"}
  end

end