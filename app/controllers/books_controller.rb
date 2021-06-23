class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def home
    end
end
