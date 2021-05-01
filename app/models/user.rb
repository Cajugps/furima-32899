class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
       with_options presence: true do
       validates :nickname
       with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/} do
       validates :last_name
       validates :first_name
       end 
       with_options format: {with: /\A[ァ-ヶ一-]+\z/} do 
       validates :last_name_kana
       validates :first_name_kana
       end 
       validates :birthday
       VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
       validates :password,format: { with: VALID_PASSWORD_REGEX }
       end 


end
