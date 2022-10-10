class BooksController < ApplicationController

    def index
        book = Book.all
        render json: book, status: :ok
    end

    def show
        book = Book.find_by(id: params[:id])
        render json: book, status: :ok
    end
end
