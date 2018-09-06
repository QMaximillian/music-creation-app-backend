module Api
  module V1
    class LyricsController < ApplicationController

      def index
        @lyrics = Lyric.all
        render json: @lyrics
        # render json: Lyric.includes(:users), include: ['users']
      end


      private

      def lyric_params
        params.require(:lyric).permit(:lyric, :user_id)
      end
    end
  end
end
