class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  def index
    @courses = Course.all
    @coursestatus = CourseStatus.all
  end

  # GET /courses/new
  def new
    @course = Course.new
    @coursestatus = CourseStatus.all
  end

  # GET /courses/1/edit
  def edit
     @coursestatus = CourseStatus.all
  end

  # POST /courses
  def create
    @coursestatus = CourseStatus.all
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_url, notice: 'course criada com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @coursestatus = CourseStatus.all
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to courses_url, notice: 'course atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /courses/1
  def destroy
    @coursestatus = CourseStatus.all
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'course removida com sucesso.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :description, :status)
    end
end
