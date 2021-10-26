class CarsController < ApplicationController
    skip_before_action :confirm_authentication, only: [:index, :show]

    def index
        render json: Car.all.to_json(:except => [:reviews])
    end

    def show
        car = Car.find(params[:id])
        render json: car
    end

    def create
        car = Car.create(car_params)
        render json: car
    end

    private
    def car_params
        params.permit(:make, :model, :engine, :horsepower, :time, :price, :image, :user_id)
    end
end
