class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    # def index
    #   @users = user.all
    #   render json: @users
    # end
    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
    @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user) }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
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
      params.require(:user).permit(:username, :password, :email, :score)
    end

    def find_user
      @user = user.find(params[:id])
    end

end
