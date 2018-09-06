module Api
  module V1
    class MusicsController < ApplicationController

      def index
        @musics = Music.all
        render json: @musics
      end


      private

      def music_params
        params.require(:music).permit(:music_text, :user_id)
      end
    end
  end
end
