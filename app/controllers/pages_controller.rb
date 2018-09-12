class PagesController < ApplicationController
    before_action :authenticate_admin!

    def home
        @student = Student.count
        @course = Course.count
        @teacher= Teacher.count
        @cohort= Cohort.count
    end
end