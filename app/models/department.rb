class Department < ApplicationRecord
  validates :name, presence: true
  has_many :courses
end
