class Course < ApplicationRecord
  validates :number, presence: true
  validates :hours, presence: true
  belongs_to :department

end
