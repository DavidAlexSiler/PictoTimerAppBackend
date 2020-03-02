class Api::V1::RoutineController < ApplicationController
    def index
        @routines = routine.all
        render json: @routines
    end

    def show
        @routine = Routine.find_by(id: params[:id])
    end

    private
    def routine_params
        params.require(:routine).permit(:name)
    end
end
