class Professor < ApplicationRecord
  validates     :name, presence: true
  validates     :office, presence: true
  has_many      :sections
  has_many      :students ,:through => :sections

end
