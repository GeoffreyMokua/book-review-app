class ReviewsController < ApplicationController

# rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
# rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

#   before_action :find_book
  before_action :find_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

    def index
        @review = Review.all
        render json: @review, status: :ok
    end

    def show
        review = Review.find(params[:id])
        render json: review, status: :ok
    end

    def create
        reviews = Review.all
        render json: reviews, status: :ok
        # # puts JSON.pretty_generate(review_params)
        # new_review = Review.create!(review_params)
        # render json: new_review, status: :created
    end

    def edit
    end


    def update
       if @review.update(review_params)
      redirect_to book_path(@book)
      else
      render 'edit'
      end
        # @review = Review.find(params[:id])
        # @review.update(review_params)
        # render json: @review, status: 200
    end

    def destroy
    @review.destroy
    redirect_to book_path(@book)
    end

    # def destroy
    #     @review = Review.find(params[:id])
    #     @review.destroy
    #     render json: {message: "Review deleted"}, status: 200
    # end

    private

    def review_params
        params.permit(:rating, :comment)
    end

    def record_not_found
        render json: {message: "Review not found"}, status: 404
    end

    def record_invalid
        render json: {message: "Validation error"}, status: 422
    end

end
