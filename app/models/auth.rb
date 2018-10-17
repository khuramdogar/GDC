class Auth < ApplicationRecord
  has_secure_password
  # associations
  belongs_to :user
  # validations
  validates :status, presence: :true, inclusion: {in: AUTH_STATUS_RANGE} #0: not confirmed 1: confirmed  2: applied for moderator 3: verified moderator
  validates :password ,length: {minimum: PASSWORD_MINIMUM_LENGTH} #,if: :password
  validates_format_of :password ,with: /(?=.*[A-Z])(?=.*\d).+/,message: I18n.t('render.errors.auth.password_format_complete'), if: :password
  validates :password_confirmation, presence: true, if: :password

end
