class BooksController < ApplicationController

    def index
        book = Book.all
        render json: book, status: :ok
    end

    def show
        book = Book.find_by(id: params[:id])
        render json: book, status: :ok
    end

    def create
        book = Book.create(book_params)
        render json: book, status: :created
    end

    # post "/books/:book_id/reviews", to: "reviews#create"
    def create
        book = Book.find_by(book_id: params[:book_id])
        review = Review.create(review_params)
        render json: review, status: :created
    end


    def update
        book = Book.find_by(id: params[:id])
        book.update(book_params)
        render json: book, status: :ok
    end

    private

    def book_params
        params.permit(:title, :author, :likes)
    end

    def review_params
        params.permit(:title, :content, :likes)
    end
end
