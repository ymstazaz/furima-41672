# README

# README

## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| nickname           | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birth              | date   | null: false |
<!-- Association 関係性 -->
- has_many :items
- has_many :transaction

## items テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| name               | string     | null: false                   |
| info               | text       | null: false                   |
| category           | string     | null: false                   |
| sales_status       | string     | null: false                   |
| shipping_fee_status| string     | null: false                   |
| prefecture         | string     | null: false                   |
| scheduled-delivery | string     | null: false                   |
| price              | integer    | null: false                   |
| user               | references | null: false, foreign_key: true|
<!-- Association 関係性 -->
- belongs_to :user
- belongs_to :transaction
- has_one_attached :image


## transactions テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| charge(仮)         | text       | null: false                   |←クレカは別サービスを利用
| item               | references | null: false, foreign_key: true|
| user               | references | null: false, foreign_key: true|
<!-- Association 関係性 -->
- belongs_to :user
- belongs_to :item
- belongs_to :shipping_address


## shipping_address テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| postal_code        | integer    | null: false                   |
| prefecture         | string     | null: false                   |
| city               | string     | null: false                   |
| addresses          | string     | null: false                   |
| building           | string     | null: true                    |
| phone_number       | integer    | null: false                   |
| transaction        | references | null: false, foreign_key: true|
<!-- Association 関係性 -->
- belongs_to :transaction