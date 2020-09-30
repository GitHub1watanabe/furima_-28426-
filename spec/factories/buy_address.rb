FactoryBot.define do
  factory :buy_address do
    postal_code { '123-4567' }
    prefectures { 1 }
    municipalities { '東京都' }
    house_number { '1-1' }
    building { '東京ハイツ' }
    phone_number  {'01234567891'}
    token {"aa11aa22"}
  end
end
