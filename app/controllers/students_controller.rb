class StudentsController < ActionController::Base

  def new
		@student = Student.new
	end

  def create
    @student = Student.new(students_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  private

def students_params(*args)
 params.require(:student).permit(*args)
end
end
