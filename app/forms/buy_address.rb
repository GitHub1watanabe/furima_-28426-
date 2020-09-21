class BuyAddress

  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture, :phone_number, :municipalities, :house_number, :building, :user_id, :item_id

  validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  validates :prefecture, numericality: { other_than: 0, message: "can't be blank" }
  validates :phone_number, format: { with: /\A\d{11}\z/ }
  validates :municipalities, presence: true
  validates :house_number, presence: true
  validates :building, presence: true

  def save
   # 購入者の情報を保存
    hello = Buy.create(user_id: user.id, item_id: item.id)
    # 住所の情報を保存
    Address.create(postal_code: postal_code, prefecture: prefecture, phone_number: phone_number, municipalities: municipalities, house_number: house_number, building: building, buy_id: hello.id)
  end
end