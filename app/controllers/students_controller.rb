class StudentsController < ApplicationController
    before_action:set_student, only:[:show, :edit, :update, :destroy]

def index
    @students = Student.all
end
def show
end
def new
    @student = Student.new
end
def create
    @student = Student.new(student_params)
    @student.save
    flash.alert = "User Added Successfully"
    redirect_to :action => :index
end
def edit
end
def update
    @student.update(student_params)
    redirect_to :action => :index
end
def destroy
    @student.destroy
    redirect_to :action => :index
end
private
def student_params
    params.require(:student).permit(:name, :age, :image)
end

def set_student
    @student = Student.find(params[:id])
end
end
