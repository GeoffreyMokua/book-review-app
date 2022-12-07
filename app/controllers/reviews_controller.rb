class ReviewsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
    reviews = Review.all 
    render json: reviews
    end

    def show
        reviews = Review.find_by(id:params[:id])
        if reviews
            render json: reviews, status: :ok
            
        else
            render json: {error: "review not found"}, status: :not_found
            
        end
    end

    def create
        reviews = Review.create(reviews_params)
        render json: reviews, status: :created

    end

    #  def create
    #     puts JSON.pretty_generate(review_params)
    #     new_review = Review.create!(review_params)
    #     render json: new_review, status: :created
    # end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        render json: @review, status: 200
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {message: "Review deleted"}, status: 200
    end

    private

    def review_params
        params.permit(:rating, :comments)
    end

    def record_not_found
        render json: {message: "Review not found"}, status: 404
    end

    def record_invalid
        render json: {message: "Validation error"}, status: 422
    end

        def reviews_params
        params.permit(:rating, :comment)
    end



    # def update

    # end

    # def destroy

    # end



end
