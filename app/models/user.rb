class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image, destroy: false
  has_many :diaries, dependent: :destroy
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :favorite_diaries, through: :favorites, source: 'diary'
  validates :nickname, presence: true, length: { maximum: 20 }, uniqueness: true
end
