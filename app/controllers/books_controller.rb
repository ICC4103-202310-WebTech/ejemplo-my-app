class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def show
        @book = Book.find params[:id]
    end

    def new
        @book = Book.new
    end

    def create
        # debugger
        Book.create books_params
    end

    private
    def books_params
        params.require(:book).permit(:isbn, :title)
    end
end