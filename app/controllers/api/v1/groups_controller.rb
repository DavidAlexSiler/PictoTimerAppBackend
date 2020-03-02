class Api::V1::GroupController < ApplicationController
    def index
        @groups = group.all
        render json: @groups
    end

    def show
        @group = Group.find_by(id: params[:id])
    end

    private
    def group_params
        params.require(:group).permit(:name)
    end
end
