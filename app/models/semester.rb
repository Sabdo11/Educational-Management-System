class Semester < ApplicationRecord
  validates :semester, presence: true
  has_many :sections
end
