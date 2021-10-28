class UsersController < ApplicationController
    skip_before_action :confirm_authentication

    def show
        current_user = User.find(session[:user_id])
        render json: current_user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def create
        user = User.new(user_params)
        if user.save
          session[:user_id] = user.id
          render json: user, status: :created
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

    private
    def user_params
        params.permit(:username, :password, :admin)
    end
end
