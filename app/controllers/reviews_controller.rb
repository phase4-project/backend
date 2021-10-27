class ReviewsController < ApplicationController
    skip_before_action :confirm_authentication

    def index
        render json: Review.all
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create(review_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end

    private
    def review_params
        params.permit(:user_id, :car_id, :comment)
    end
end
