class StudentsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @students = Student.all
        @cohorts = Cohort.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
        
    end

    def create
        @student = Student.create(student_params)
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
    end
  
end


private

def student_params
    params.require(:student).permit(:fname,:lname,:age,:cohort_id,:phone_number,:email,:pic_url)
end