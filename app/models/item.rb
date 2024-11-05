class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category, class_name: 'Category'
  belongs_to_active_hash :sales_status, class_name: 'SalesStatus'
  belongs_to_active_hash :shipping_fee_status, class_name: 'ShippingFeeStatus'
  belongs_to_active_hash :prefecture, class_name: 'Prefecture'
  belongs_to_active_hash :scheduled_delivery, class_name: 'ScheduledDelivery'

  validates :name, presence: true
  validates :info, presence: true
  validates :category_id, numericality: { other_than: 1 }, presence: true
  validates :sales_status_id, numericality: { other_than: 1 }, presence: true
  validates :shipping_fee_status_id,  numericality: { other_than: 1 }, presence: true
  validates :prefecture_id,  numericality: { other_than: 1 }, presence: true
  validates :scheduled_delivery_id,  numericality: { other_than: 1 }, presence: true
  validates :price, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  validates :image, presence: true
end
