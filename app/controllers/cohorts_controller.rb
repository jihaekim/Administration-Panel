class CohortsController < ApplicationController
    
    def index
        @cohorts = Cohort.all
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
    end
    
    def create
        @cohort = Cohort.create(cohort_params)
    end

    def edit
        @cohort = Cohort.find(params[:id])
    end
    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
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