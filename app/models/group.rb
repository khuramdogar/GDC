class Group < ApplicationRecord
  belongs_to :project
  has_many :locations
end

# t.integer :matric_marks