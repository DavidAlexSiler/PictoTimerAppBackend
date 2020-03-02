class Api::V1::StudentsController < ApplicationController
    def index
        @students = Student.all
        render json: @students
    end

    def show
        @student = Student.find_by(id: params[:id])
    end

    def new
        @student = Student.new
    end

    #signup
    def create
        @student = Student.create(student_params)
        render json: { student: @student }, status: :created
    end

    private
    def student_params
        params.require(:student).permit(:name, :bio, :phone_number)
    end
end
