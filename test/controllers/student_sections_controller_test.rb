require 'test_helper'

class StudentSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_section = student_sections(:one)
  end

  test "should get index" do
    get student_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_student_section_url
    assert_response :success
  end

  test "should create student_section" do
    assert_difference('StudentSection.count') do
      post student_sections_url, params: { student_section: { section_id: @student_section.section_id, student_id: @student_section.student_id } }
    end

    assert_redirected_to student_section_url(StudentSection.last)
  end

  test "should show student_section" do
    get student_section_url(@student_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_section_url(@student_section)
    assert_response :success
  end

  test "should update student_section" do
    patch student_section_url(@student_section), params: { student_section: { section_id: @student_section.section_id, student_id: @student_section.student_id } }
    assert_redirected_to student_section_url(@student_section)
  end

  test "should destroy student_section" do
    assert_difference('StudentSection.count', -1) do
      delete student_section_url(@student_section)
    end

    assert_redirected_to student_sections_url
  end
end
