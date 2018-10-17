class User < ApplicationRecord
  #associations
  has_one :auth , dependent: :destroy
  has_many :sessions, dependent: :destroy
  has_many :projects, dependent: :destroy
  belongs_to :group, optional: true

  #validation
  validates :user_type , presence: :true ,inclusion: {in: USER_TYPE_RANGE} # 1 general, 0 admin
  validates :name, presence: :true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: I18n.t('render.errors.auth.email_format')
  validates :email, presence: true , uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :user_status, presence: :true, inclusion: {in: USER_STATUS_RANGE} # 1 active, 0 blocked
end
