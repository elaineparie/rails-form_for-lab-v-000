class StudentsController < ActionController::Base

  def new
		@student = Student.new
	end

  def create
    @student = Student.new(students_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

def show
    @student = Student.find(params[:id])
  end

    def edit
      @school_class = SchoolClass.find(params[:id])
    end

    def update
      @school_class = SchoolClass.find(params[:id])
  @school_class.update(school_class_params(:title, :room_number))
  redirect_to school_class_path(@school_class)
    end

end
  private

def students_params(*args)
 params.require(:student).permit(*args)
end
end
