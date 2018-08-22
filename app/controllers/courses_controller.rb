class CoursesController < ApplicationController
    def index
        @course = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course= Course.new
    end

    def create
        @course = Course.create(course_params)
    end
    
    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
    end

 
end

private

def course_params
    params.require(:course).permit(:name,:hours)
end