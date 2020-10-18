class AddSectionReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :sections , :course, foreign_key: true
    add_reference :sections , :professor, foreign_key: true
    add_reference :sections , :semester, foreign_key: true
  end
end
