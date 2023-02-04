class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #has_many :hostparents, dependent: :destroy
  has_many :orphans, dependent: :destroy
#  has_many :originalparents, dependent: :destroy
end
