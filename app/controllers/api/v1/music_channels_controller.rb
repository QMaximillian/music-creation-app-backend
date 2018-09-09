module Api
    module V1
      class MusicChannelsController < ApplicationController

        def index
          @music_channels = MusicChannel.all

          render json: @music_channels
        end


        def create
    @music_channel = MusicChannel.new(@music_channel_params)
    if @music_channel.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        MusicChannelSerializer.new(@music_channel)
      ).serializable_hash
      ActionCable.server.broadcast 'musics_channel', serialized_data
      head :ok
    end
  end
        private

        def music_channel_params
          params.require(:music_channel).permit(:name)
        end
      end
    end
end
