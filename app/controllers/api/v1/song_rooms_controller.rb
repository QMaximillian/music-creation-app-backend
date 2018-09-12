class Api::V1::SongRoomsController < ApplicationController


    def index
      @song_rooms = SongRoom.all

      render json: @song_rooms
    end

    def show
      @song_room = SongRoom.find(params[:id])

      render json: @song_room
    end

    def create
      @song_room = SongRoom.new(song_rooms_params)
      # can't hit byebug, why does my params want a "song_room"
      byebug
      if @song_room.save
        render json: @song_room
      end
    end

    private

    def song_rooms_params
      params.require(:song_room).permit(:lyricist_id, :musician_id, :song_name)
    end
  end
