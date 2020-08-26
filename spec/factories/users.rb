FactoryBot.define do
  factory :user do
    name              {"ああああああああああ"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {password}
    first_name          {"ああああああ"}
    last_name           {"ああああああ"}
    first_name_kana     {"ああああああああああ"}
    last_name_kana      {"ああああああああああ"}
    birth_date           {"Fri, 15 May 1981"}
  end
end