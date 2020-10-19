class Student < ApplicationRecord
  has_and_belongs_to_many :sections

  # Validations
  validates :name, presence: true
  #The attribute length must be equal to the given value.
  validates :identifier, length: {is:9}
  validates :identifier, format: { with: /^900/,message: "should start with 900*" , multiline:true }

end
