class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def new
        @user = User.new
    end

    #signup
    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: @user }, status: :created
        else 
            render json: { message: "enter a valid user" }, status:  :not_acceptable 
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.update
    end

    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
    end



    private
    def user_params
        params.require(:user).permit(:name, :title, :image, :email, :password, :bio, :phone_number)
    end
end
