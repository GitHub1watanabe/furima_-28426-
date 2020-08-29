class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :status
  belongs_to_active_hash :fee
  belongs_to_active_hash :delivery_area
  belongs_to_active_hash :delivery_date
  has_one_attached :image
  belongs_to :user
end
