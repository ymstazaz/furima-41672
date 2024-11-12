class OrderShippingAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :order_id, :postal_code, :prefecture_id, :city, :addresses, :building, :phone_number, :token

  with_options presence: true do
    validates :city, :addresses, :item_id, :user_id, :token
    validates :postal_code, format: { with: /\A\d{3}-\d{4}\z/, allow_blank: true }
    validates :phone_number, format: { with: /\A\d{10,11}\z/, allow_blank: true }
  end
  validates :prefecture_id, numericality: { other_than: 1 }

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    ShippingAddress.create(order_id: order.id, postal_code: postal_code, prefecture_id: prefecture_id, city: city,
                           addresses: addresses, building: building, phone_number: phone_number)
  end
end
