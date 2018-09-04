class CoursesController < ApplicationController
    before_action :authenticate_admin!
    def index
        @courses = Course.all
        
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
    
    def destroy
        @course = Course.find(params[:id])
        @course.destroy
    end
 
end

private

def course_params
    params.require(:course).permit(:name,:hours,:pic_url)
end