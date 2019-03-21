class StudentsController < ApplicationController
  
 	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end
	
	def edit
    @student = Student.find(params[:id])
  end
	def create
  @student = Student.new(student_params(:title, :description))
  @student.save
  redirect_to student_path(@student)
end
   
  def update
  @student = Student.find(params[:id])
  @student.update(student_params(:title))
  redirect_to student_path(@student)
end

private

def student_params(*args)
  params.require(:student).permit(*args)
end
end
