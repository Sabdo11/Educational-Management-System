require "application_system_test_case"

class StudentSectionsTest < ApplicationSystemTestCase
  setup do
    @registration = student_sections(:one)
  end

  test "visiting the index" do
    visit registrations_url
    assert_selector "h1", text: "Student Sections"
  end

  test "creating a Student section" do
    visit registrations_url
    click_on "New Student Section"

    fill_in "Section", with: @registration.section_id
    fill_in "Student", with: @registration.student_id
    click_on "Create Student section"

    assert_text "Student section was successfully created"
    click_on "Back"
  end

  test "updating a Student section" do
    visit registrations_url
    click_on "Edit", match: :first

    fill_in "Section", with: @registration.section_id
    fill_in "Student", with: @registration.student_id
    click_on "Update Student section"

    assert_text "Student section was successfully updated"
    click_on "Back"
  end

  test "destroying a Student section" do
    visit registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student section was successfully destroyed"
  end
end
