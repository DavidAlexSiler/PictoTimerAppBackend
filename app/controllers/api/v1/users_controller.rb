class Api::V1::UsersController < ApplicationController

    #signup
    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: @user }, status: :created
        else 
            render json: { message: "enter a valid user" }, status:  :not_acceptable 
        end
    end



    private
    def user_params
        params.require(:user).permit(:name, :title, :image, :email, :password, :bio, :phone_number)
    end
end
