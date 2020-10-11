json.extract! person, :id, :person_id, :first_name, :last_name, :email, :address_line_one, :city, :state, :zip_code, :created_at, :updated_at
json.url person_url(person, format: :json)
