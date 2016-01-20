class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    @studentstatuses = StudentStatus.all
    if params[:search]
      @students = Student.search(params[:search]).order(name: :desc)
    else
      @students = Student.order(name: :desc)
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @studentstatuses = StudentStatus.all
  end

  # GET /students/new
  def new
    @student = Student.new
    @studentstatuses = StudentStatus.all
  end

  # GET /students/1/edit
  def edit
    @studentstatuses = StudentStatus.all
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to students_url, notice: 'student criada com sucesso.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to students_url, notice: 'student atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'student removida com sucesso.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :register_number, :status)
    end
end
