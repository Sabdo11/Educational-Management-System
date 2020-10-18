json.extract! student_section, :id, :section_id, :student_id, :created_at, :updated_at
json.url registration_url(student_section, format: :json)
