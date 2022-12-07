class BooksController < ApplicationController
    before_action :find_book, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit]
    
    def index
     books = Book.all 
     render json: books
    end



    def show
        book = Book.find_by(id:params[:id])
        if book
            render json: book, status: :ok
            # render json: book, serializer: EachBookReviewsSerializer
            
        else
            render json: {error: "review not found"}, status: :not_found
            
        end
    end


    # def book_reviews
    #     puts "my book id #{params[:id]}" 
        
    # end

end
