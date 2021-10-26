class FavoritesController < ApplicationController

    def index
        render json: Favorite.all
    end

    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
    end

    private

    def favorite_params
        params.permit(:user_id, :car_id)
    end
end
