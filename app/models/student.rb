class Student < ApplicationRecord
  has_and_belongs_to_many :sections
  #has_many :professors , :through => :sections
end
