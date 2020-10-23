class StaticPagesController < ApplicationController
  before_action :authenticate_user!


  # GET /static_pages
  # GET /static_pages.json
  def index
    @sections = Section.all
    @students = Student.all
    @registrations = SectionsStudents.all
  end

  # GET /static_pages/1
  # GET /static_pages/1.json
  def show
    @registration = SectionsStudents.find(params[:id])
  end

  def search
    @search_by = params[:search_by]
    if @search_by == "professors"
      @search_results = Professor.where("name like ?", "%" +params[:q]+ "%")
    elsif @search_by == "students"
      @search_results = Student.where("name like ?", "%" +params[:q]+ "%")
    elsif @search_by == "departments"
      @search_results = Department.where("name like ?", "%" +params[:q]+ "%")
    elsif @search_by == "courses"
      @search_results = Course.where("number like ?", "%" +params[:q]+ "%")
    elsif @search_by == "sections"
      @search_results = Section.where("year like ?", "%" +params[:q]+ "%")
    elsif @search_by == "semesters"
      @search_results = Semester.where("semester like ?", "%" +params[:q]+ "%")
    end

  end

end
