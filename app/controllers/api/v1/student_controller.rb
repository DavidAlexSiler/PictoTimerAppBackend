class Api::V1::StudentController < ApplicationController
    def index
        @students = Student.all
        render json: @student
    end

    def show
        @student = Student.find_by(id: params[:id])
    end

    private
    def student_params
        params.require(:student).permit(:name)
    end
end
