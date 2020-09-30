FactoryBot.define do
  factory :user do
    name              {"ああああああああ"}
    email                 {Faker::Internet.free_email}
    password              {"000011aabb"}
    password_confirmation {password}
    first_name          {"ああああああ"}
    last_name           {"ああああああ"}
    first_name_kana     {"アアアアアアアアアア"}
    last_name_kana      {"アアアアアアアアアア"}
    birth_date           {"2010-12-31"}
  end
end