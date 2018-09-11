class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

      def index
        @users = User.all

        render json: @users
      end

      def show
        @user = User.find(params[:id])

        render json: @user
      end

      def create
        @user = User.new(user_params)

        if @user.save
          token = encode_token({user_id: @user.id})
          render json: {user: @user.format, jwt: token}, status: :created
        else
          render json: { message: 'Invalid Username or Password' }, status: :not_acceptable
        end
      end

      private

      def user_params
        params.require(:user).permit(:username, :password)
    end
end
