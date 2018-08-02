class SchoolClassesController < ActionController::Base

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
@school_class.save
  end

  private

def school_class_params(*args)
 params.require(:school_class).permit(*args)
end
end
