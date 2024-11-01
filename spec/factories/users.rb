FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.email }
    password              { Faker::Internet.password(min_length: 5, mix_case: true, special_characters: false) + rand(0..9).to_s }
    password_confirmation { password }
    nickname              { Faker::Name.initials(number: 2) }
    last_name             { '山田' }
    first_name            { '太郎' }
    last_name_kana        { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
    birth                 { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end
