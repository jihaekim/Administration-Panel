class CohortsController < ApplicationController
    before_action :authenticate_admin!
    
    def index
        @cohorts = Cohort.order("id ASC")
        @teachers = Teacher.all
        @courses = Course.all
    end

    def show
        @cohort = Cohort.find(params[:id])
        @teachers = Teacher.all
        @students = Student.all
    end

    def new
        @cohort = Cohort.new
        @courses = Course.all
        @teachers = Teacher.all
        
    end
    
    def create
        @cohort = Cohort.create(cohort_params)
        redirect_to :controller => 'cohorts', :action => 'index'
    end

    def edit
        @cohort = Cohort.find(params[:id])
        @courses = Course.all
        @teachers = Teacher.all
    end
    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to :controller => 'cohorts', :action => 'show'
    end

    def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy

        redirect_to :controller => 'cohorts', :action => 'index'
    end
end

private

def cohort_params
    params.require(:cohort).permit(:name,:start_date,:end_date,:teacher_id,:course_id)
end