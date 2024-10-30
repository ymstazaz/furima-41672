# README
┗アクティブハッシュを作成した際にアソシエーションも忘れない！子！

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
- has_many :oders

## items テーブル
| Column                | Type       | Options                       |
| --------------------- | ---------- | ----------------------------- |
| name                  | string     | null: false                   |
| info                  | text       | null: false                   |
| category_id           | integer    | null: false                   |
| sales_status_id       | integer    | null: false                   |
| shipping_fee_status_id| integer    | null: false                   |
| prefecture_id         | integer    | null: false                   |
| scheduled_delivery_id | integer    | null: false                   |
| price                 | integer    | null: false                   |
| user                  | references | null: false, foreign_key: true|
<!-- Association 関係性 -->
- belongs_to :user
- has_one :oder
- has_one_attached :image


## oders テーブル
┗カード決済は外部のを使う。
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| item               | references | null: false, foreign_key: true|
| user               | references | null: false, foreign_key: true|
<!-- Association 関係性 -->
- belongs_to :user
- belongs_to :item
- has_one :shipping_address


## shipping_address テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| postal_code        | string     | null: false                   |
| prefecture_id      | integer    | null: false                   |
| city               | string     | null: false                   |
| addresses          | string     | null: false                   |
| building           | string     | null: true                    |
| phone_number       | string     | null: false                   |
| oder               | references | null: false, foreign_key: true|
<!-- Association 関係性 -->
- belongs_to :oder