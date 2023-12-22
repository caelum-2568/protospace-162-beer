class User < ApplicationRecord
  validates :email, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :encrypted_password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validate :password_match

  def password_match
    errors.add(:password_confirmation, "doesn't match Password") if password != password_confirmation
  end

  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end