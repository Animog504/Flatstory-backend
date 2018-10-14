class Api::V1::UsersController < ApplicationController
    def index
      @users = user.all
      render json: @users
    end

    def create
      # WORK HERE
    end

    def update
      @user.update(user_params)
      if @user.save
        render json: @user, status: :accepted
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
      end
    end

    private

    def user_params
      params.permit(:first_name, :last_name, :email, :score)
    end

    def find_user
      @user = user.find(params[:id])
    end

end
