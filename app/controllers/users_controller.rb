class UsersController < ApplicationController
    skip_before_action :confirm_authentication

    def create
        user = User.create(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private
    def user_params
        params.permit(:username, :password)
    end
end
