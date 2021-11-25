class UserController < ApplicationController
    def index        
        @users = User.all
    end
    def show
        @user= User.find(params[:id])
    end
    def create
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        @user.update

        redirect_to user_path(@user)
    end
    def new 
        @user = User.new
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to user_path
    end
    private 
    def user_params
        params.permit(:f_name, :l_name, :email, :phone_num)
    end
end
