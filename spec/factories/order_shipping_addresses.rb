FactoryBot.define do
  factory :order_shipping_address do
    postal_code { '123-4567' }
    prefecture_id { 2 }
    city { '東京都' }
    addresses { '東京都' }
    building { '東京ハイツ' }
    phone_number { '12312341234' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
