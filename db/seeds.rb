# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Student
Student.create(
    :name => 'Selamawit T. Abdo',
    :identifier => 900245987
)
Student.create(
    :name => 'John Doe',
    :identifier => 900654734
)
Student.create(
    :name => 'Jane Smith',
    :identifier => 900345876
)

# Department
Department.create(
    :name => 'Computer Science'
)
Department.create(
    :name => 'Mathematics'
)
Department.create(
    :name => 'Geology'
)

# Course
Course.create(
    :number => 1400 ,
    :hours => 4,
    :department_id => 1
)
Course.create(
    :number => 1100 ,
    :hours => 3,
    :department_id => 2
)
Course.create(
    :number => 2100 ,
    :hours => 3,
    :department_id => 3
)
# Semester
Semester.create(
    :semester => 'Fall'
)
Semester.create(
    :semester => 'Spring'
)
Semester.create(
    :semester => 'Summer'
)

# Professor
Professor.create(
    :name => 'Dr.Steven Beaty' ,
    :office => 142
)
Professor.create(
    :name => 'Dr.Joshua Minten' ,
    :office => 201
)
Professor.create(
    :name => 'Dr.Will Smith' ,
    :office => 302
)


# Section
Section.create(
    :year => 2020 ,
    :course_id => 1,
    :professor_id => 1,
    :semester_id => 1
)
Section.create(
    :year => 2019 ,
    :course_id => 2,
    :professor_id => 2,
    :semester_id => 2
)
Section.create(
    :year => 2018 ,
    :course_id => 3,
    :professor_id => 3,
    :semester_id => 3
)

# SectionStudents (Registration)
SectionsStudents.create(
    :student_id => 1 ,
    :section_id => 1
)
SectionsStudents.create(
    :student_id => 2 ,
    :section_id => 2
)
SectionsStudents.create(
    :student_id => 3 ,
    :section_id => 3
)