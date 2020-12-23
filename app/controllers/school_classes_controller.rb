class SchoolClassesController < ApplicationController
  def index
    @klasses = SchoolClass.all
  end

  def show
    klass
  end

  def create
    klass = SchoolClass.create(klass_params(:title, :room_number))
    redirect_to school_class_path(klass)
  end

  def update
    klass.update(klass_params(:title, :room_number))
    redirect_to school_class_path(klass)
  end

  def new
  end

  def edit
    klass
  end

  def delete
  end

  private
  
  def klass
    @klass ||= SchoolClass.find(params[:id])
  end  

  def klass_params(*args)
    params.require(:school_class).permit(*args)
  end  

end
