class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :last_name, presence: true, format: {
    with: /\A(\p{Hiragana}|\p{Katakana}|[一-龠々])+\z/
  }
  validates :first_name, presence: true, format: {
    with: /\A(\p{Hiragana}|\p{Katakana}|[一-龠々])+\z/
  }
  validates :last_name_kana, presence: true, format: {
    with: /\A(\p{Katakana})+\z/
  }
  validates :first_name_kana, presence: true, format: {
    with: /\A(\p{Katakana})+\z/
  }
  validates :birth, presence: true
  validates :password, format: {
    with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).+\z/
  }
end
