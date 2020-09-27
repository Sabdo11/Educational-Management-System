class UpdateSectionTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :sections , :semester, foreign_key: true
    remove_reference :sections , :student, foreign_key: true
  end
end
