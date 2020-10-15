class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
 
    validates :image, presence:  { message:'Please paste the image'}
    validates :name, presence:{ message:'Please enter the product name'}
    validates :comment, presence:{ message:'Please enter the product description'}
    validates :category_id, presence:{ other_than: 0, message:'Please select a category'}
    validates :status_id, presence:{ other_than: 0, message:'Please select the product status'}
    validates :fee_id, presence:{ other_than: 0, message:'Please select a shipping fee'}
    validates :delivery_area_id,  presence:{ other_than: 0, message:'Please select a delivery area'}
    validates :delivery_date_id,  presence:{ other_than: 0, message:'Please select a delivery date'}
    validates :price, presence: { message:'Enter price'}
    validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }

    belongs_to_active_hash :category
    belongs_to_active_hash :status
    belongs_to_active_hash :fee
    belongs_to_active_hash :delivery_area
    belongs_to_active_hash :delivery_date
    has_one_attached :image
    belongs_to :user
    has_one :buy
end
