class BooksController < ApplicationController
    # before_action :find_book, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit]
    
    def index
     books = Book.all 
     render json: books
    end



    def show
        book = Book.find_by(id:params[:id])
        if book
            render json: book, status: :ok

            
        else
            render json: {error: "review not found"}, status: :not_found
            
        end
    end
        def create
        book = Book.create(reviews_params)
        render json: book, status: :created

    end

        private

    def review_params
        params.permit(:title, :description, :author)
    end




end
