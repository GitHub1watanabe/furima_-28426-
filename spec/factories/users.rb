FactoryBot.define do
  factory :user do
    name              {"ああああああああ"}
    email                 {"kkk@gmail.com"}
    password              {"000011aabb"}
    password_confirmation {password}
    first_name          {"ああああああ"}
    last_name           {"ああああああ"}
    first_name_kana     {"アアアアアアアアアア"}
    last_name_kana      {"アアアアアアアアアア"}
    birth_date           {"2010-12-31"}
  end
end