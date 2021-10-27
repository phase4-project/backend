class UsersController < ApplicationController
    skip_before_action :confirm_authentication

    def show
        if current_user
            render json: current_user, status: :ok
        else
            render json: { error: 'No active session' }, status: :unauthorized
        end
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
    end

    private
    def user_params
        params.permit(:username, :password, :admin)
    end
end
