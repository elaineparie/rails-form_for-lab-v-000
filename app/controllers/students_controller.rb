class StudentsController < ActionController::Base

  private

def school_class_params(*args)
 params.require(:school_class).permit(*args)
end
end
