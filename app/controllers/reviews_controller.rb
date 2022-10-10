class ReviewsController < ApplicationController

    def index
        review = Review.all
        render json: review, status: :ok
    end

    def show
        review = Review.find_by(id: params[:id])
        render json: review, status: :ok
    end

    
end
