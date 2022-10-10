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

    private

    def book_params
        params.permit(:title, :author, :likes)
    end
end
