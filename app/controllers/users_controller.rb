class UsersController < ApplicationController

# rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
# rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end


    def update
        user = User.find_by(params[:id])
        user.update!(user_params)
        render json: user, status: :accepted
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {message: "User deleted"}, status: :ok
    end

    private

    def user_params
        params.permit(:fullname, :user_name, :password)
    end

    def record_not_found
        render json: {message: "User not found"}, status: 404
    end

    def record_invalid
        render json: {message: "Validation error"}, status: 422
    end
end