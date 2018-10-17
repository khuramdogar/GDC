class User < ApplicationRecord
  has_many :projects, dependent: :destroy

  validates :email, presence: true , uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
end
