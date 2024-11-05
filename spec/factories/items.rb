FactoryBot.define do
  factory :item do
    name                   { '風船' }
    info                   {Faker::Lorem.sentence }
    category_id            {Faker::Number.between(from:2, to:11 ) }
    sales_status_id        {Faker::Number.between(from:2, to:7 ) }
    shipping_fee_status_id {Faker::Number.between(from:2, to:3 ) }
    prefecture_id          {Faker::Number.between(from:2, to:48 ) }
    scheduled_delivery_id  {Faker::Number.between(from:2, to:4 ) }
    price                  {Faker::Number.between(from:300, to:9999999 ) }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open(Rails.root.join('spec/fixtures/files/sample_image.jpg')), filename: 'sample_image.jpg', content_type: 'image/jpeg')
    end
  end
end
