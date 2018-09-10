module Api
  module V1
  class SongRoomsController < ApplicationController


    def index
      @song_rooms = SongRoom.all

      render json: @song_rooms
    end

    def show
      @song_room = SongRoom.find(params[:id])

      render json: @song_room
    end

    def create
      @song_room = SongRoom.new(song_room_params)

      if @song_room.save
        render json: @song_room
      end
    end

    private

    def song_rooms_params
      params.require(:song_room).permit(:user_id)
    end
  end
end
end
