module Api
  module V1
    class UsersController < ApplicationController

      def index
        @user = User.all
        render json: @user
      end


      private

      def user_params
        params.require(:user).permit(:name)
      end
    end
  end
end
