class TeachersController < ApplicationController
    before_action :authenticate_admin!
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
      redirect_to show_teacher_path

    end

    def edit
        @teacher = Teacher.find(params[:id])
    end


    def update
        @teacher = Teacher.find(params[:id])
        @teacher.update(teacher_params)
    end

    def destroy
        @teacher = Teacher.find(params[:id])
        @teacher.destroy
    end
end



private

def teacher_params
    params.require(:teacher).permit(:fname,:lname,:age,:salary,:education,:phone_number,:email,:pic_url)
end