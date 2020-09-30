class BuyAddress

  include ActiveModel::Model
  attr_accessor :postal_code, :prefectures, :phone_number, :municipalities, :house_number, :building, :token, :user_id, :item_id

  validates :postal_code, presence: true, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  validates :prefectures,  presence: true, numericality: { other_than: 0 }
  validates :phone_number, presence: true, format: { with: /\A\d{11}\z/, message: "Numbers longer than 11 digits cannot be saved"}
  validates :municipalities, presence: true
  validates :house_number, presence: true
  validates :token, presence: true

  def save
   # 購入者の情報を保存
    buy = Buy.create(user_id: user_id, item_id: item_id)
    # 住所の情報を保存
    Address.create(postal_code: postal_code, prefectures: prefectures, phone_number: phone_number, municipalities: municipalities, house_number: house_number, building: building, buy_id: buy.id)
  end
end