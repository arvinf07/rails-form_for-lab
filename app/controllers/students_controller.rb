class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    student
  end

  def create
    student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(student)
  end

  def update
    student.update(student_params(:first_name, :last_name))
    redirect_to student_path(student)
  end

  def new
  end

  def edit
    student
  end

  def delete
  end

  private
  
  def student
    @student ||= Student.find(params[:id])
  end  

  def student_params(*args)
    params.require(:student).permit(*args)
  end  

end
