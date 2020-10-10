class Section < ApplicationRecord
  validates :year, presence: true
  belongs_to :semester
  belongs_to :professor
  belongs_to :course
end
