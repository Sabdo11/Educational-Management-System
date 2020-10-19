class Semester < ApplicationRecord
  #specified attributes are not empty
  validates :semester, presence: true
  #The default error message is is invalid. This can be changed with the :message option.
  validates :semester, format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
  has_many :sections
end
