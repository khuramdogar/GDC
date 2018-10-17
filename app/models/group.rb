class Group < ApplicationRecord
  belongs_to :project
  has_many :locations
  has_many :users
end
