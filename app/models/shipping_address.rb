class ShippingAddress < ApplicationRecord
  belongs_to :order
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture, class_name: 'Prefecture'
end
