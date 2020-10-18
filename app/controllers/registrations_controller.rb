class RegistrationsController < ApplicationController
  before_action :set_student_section, only: [:show, :edit, :update, :destroy]

  # GET /registrations
  # GET /registrations.json
  def index
    @sections = Section.all
    @students = Student.all
    @registrations = SectionsStudents.all
    String test = "test"
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show

  end

  # GET /registrations/new
  def new
    @sections = Section.all
    @students = Student.all
  end

  # GET /registrations/1/edit
  def edit
    @sections = Section.all
    @students = Student.all
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(student_section_params)

    respond_to do |format|
      if @registration.save
        format.html { redirect_to @registration, notice: 'Registration was successfully created.' }
        format.json { render :show, status: :created, location: @registration }
      else
        format.html { render :new }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrations/1
  # PATCH/PUT /registrations/1.json
  def update
    respond_to do |format|
      if @registration.update(student_section_params)
        format.html { redirect_to @registration, notice: 'Registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration }
      else
        format.html { render :edit }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration.destroy
    respond_to do |format|
      format.html { redirect_to registrations_url, notice: 'Registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_section
      @registration = SectionsStudents.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_section_params
      params.require(:registration).permit(:section_id, :student_id )
    end
end
