class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :birth, presence: true
  validates :password, format: {
    with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).+\z/
  }
end
