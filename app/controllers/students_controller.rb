class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        render json: Student.order("grade DESC")
    end

    def highest_grade
       render json: Student.all.max_by {|d| d.grade }
    end
end
