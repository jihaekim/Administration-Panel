class TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
    end

    def show
    end

    def new
        @teachers = Teacher.new
    end

    def create
      @teacher = Teacher.create(post_params)
      redirect_to new_teacher_path

    end

    def edit
    end

  
end

private

def post_params
    params.require(:teacher).permit(:fname,:lname,:age,:salary,:education)
end