class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :person_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address_line_one
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
