class StudentsController < ActionController::Base

  def create
    @student = Student.new(students_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  private

def school_class_params(*args)
 params.require(:school_class).permit(*args)
end
end
