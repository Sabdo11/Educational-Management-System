# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_27_181038) do

  create_table "courses", force: :cascade do |t|
    t.integer "number"
    t.integer "hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "department_id"
    t.index ["department_id"], name: "index_courses_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "person_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "address_line_one"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.string "office"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course_id"
    t.integer "professor_id"
    t.integer "semester_id"
    t.index ["course_id"], name: "index_sections_on_course_id"
    t.index ["professor_id"], name: "index_sections_on_professor_id"
    t.index ["semester_id"], name: "index_sections_on_semester_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "semester"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_sections", force: :cascade do |t|
    t.integer "section_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["section_id"], name: "index_student_sections_on_section_id"
    t.index ["student_id"], name: "index_student_sections_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "identifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "courses", "departments"
  add_foreign_key "sections", "courses"
  add_foreign_key "sections", "professors"
  add_foreign_key "sections", "semesters"
  add_foreign_key "student_sections", "sections"
  add_foreign_key "student_sections", "students"
end
