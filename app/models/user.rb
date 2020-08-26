class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i , message:'Including half-width alphanumeric characters'}

    with_options presence: true do
         validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
         validates :name
         validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ , message:'please enter in full-width characters'}
         validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ , message:'please enter in full-width characters'}
         validates :first_name_kana, format: { with: /\A[ァ-ヴ]+\z/ , message:'Please enter in the full-width katakana'}
         validates :last_name_kana, format: { with: /\A[ァ-ヴ]+\z/ , message:'Please enter in the full-width katakana'}
         validates :birth_date
      end
end
