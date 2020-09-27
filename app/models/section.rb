class Section < ApplicationRecord
  belongs_to :semester
  belongs_to :professor
  belongs_to :course
end
