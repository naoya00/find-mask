FactoryBot.define do

  factory :mask do
    name              {"快適マスク"}
    image             {File.open("#{Rails.root}/spec/fixtures/hand.jpg")}
    stock             {"30"}
    shop_id           {"1"}
    association :shop
  end

end