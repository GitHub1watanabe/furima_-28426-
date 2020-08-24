FactoryBot.define do
  factory :user do
    name              {"わたなべ"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {password}
  end
end