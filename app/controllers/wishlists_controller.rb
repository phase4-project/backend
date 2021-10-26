class WishlistsController < ApplicationController
    def index
        render json: Wishlist.all
    end

    def create
        wishlist = Wishlist.create(wishlist_params)
        render json: wishlist
    end

    def destroy
        wishlist = Wishlist.find(params[:id])
        wishlist.destroy
    end

    private

    def wishlist_params
        params.permit(:user_id, :car_id)
    end
end
