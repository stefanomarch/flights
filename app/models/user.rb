class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_token_authenticatable
  has_many :bookings
  validates :email, :password, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
