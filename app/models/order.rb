class Order < ApplicationRecord
  belongs_to :item
  belongs_to :user
  has_one :shipping_addresses

  with_options presence: true do
    validates :item_id, :user_id
  end
end
