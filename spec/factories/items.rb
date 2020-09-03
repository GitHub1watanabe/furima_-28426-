FactoryBot.define do
  factory :item do
    name              {"ああああああああ"}
    price                 {"1000"}
    comment              {"あああああああ"}
    category_id          {1}
    status_id           {1}
    delivery_date_id     {2}
    delivery_area_id       {2}
    fee_id           {1}
    association :user
  end
end
