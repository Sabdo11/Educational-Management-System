class Section < ApplicationRecord
  validates :year, presence: true
  /\A[+-]?\d+\z/
  belongs_to :semester
  belongs_to :professor
  belongs_to :course
  has_and_belongs_to_many :students
end
