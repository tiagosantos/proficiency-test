class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  # GET /classrooms
  # GET /classrooms.json
  def index
    @classrooms = Classroom.all
    @students = Student.all
    @courses = Course.all
  end

  # GET /classrooms/1
  # GET /classrooms/1.json
  def show
    @classrooms = Classroom.all
    @students = Student.all
    @courses = Course.all
  end

  # GET /classrooms/new
  def new
    @classroom = Classroom.new
    @classrooms = Classroom.all
    @students = Student.all
    @courses = Course.all
  end

  # GET /classrooms/1/edit
  def edit
    @classrooms = Classroom.all
    @students = Student.all
    @courses = Course.all
  end

  # POST /classrooms
  # POST /classrooms.json
  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.entry_at = Time.now

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to classrooms_url, notice: 'Classroom criada com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end
  def update
    respond_to do |format|
      if @classroom.update(classroom_params)
        format.html { redirect_to classrooms_url, notice: 'Classroom atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @classroom.destroy
    respond_to do |format|
      format.html { redirect_to classrooms_url, notice: 'Classroom removida com sucesso.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom
      @classroom = classroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classroom_params
      params.require(:classroom).permit(:name, :student_id, :course_id, :entry_at)
    end
end
