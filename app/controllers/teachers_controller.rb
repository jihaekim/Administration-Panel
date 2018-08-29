class TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
        @cohorts = Cohort.all
    end

    def show
        @teacher = Teacher.find(params[:id])

    end

    def new
        @teacher = Teacher.new
    end

    def create
      @teacher = Teacher.create(teacher_params)
      redirect_to new_teacher_path

    end

    def edit
        @teacher = Teacher.find(params[:id])
    end


    def update
        @teacher = Teacher.find(params[:id])
        @teacher.update(teacher_params)
    end
end



private

def teacher_params
    params.require(:teacher).permit(:fname,:lname,:age,:salary,:education)
end