class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  def index
    @students = Student.all
    @studentstatuses = StudentStatus.all
    if params[:search]
      @students = Student.search(params[:search]).order(name: :desc)
    else
      @students = Student.order(name: :desc)
    end
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
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to students_url, notice: 'Estudante criada com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /students/1
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to students_url, notice: 'Estudante atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Estudante apagada com sucesso!' }
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
