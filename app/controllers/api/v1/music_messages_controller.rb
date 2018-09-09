module Api
  module V1
    class MusicMessages < ApplicationController

      def index
        @messages = MusicMessage.all

        render json: @music_messages
      end

      def create
    @music_message = MusicMessage.new(@music_message_params)
    conversation = MusicChannel.find(@music_message_params[:music_channel_id])
    if @music_message.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        MusicMessageSerializer.new(@music_message)
      ).serializable_hash
      MusicMessagesChannel.broadcast_to music_channel, serialized_data
      head :ok
    end
  end

      private

      def music_message_params
        params.require(:music_messages).permit(:music_channel_id, :content)
      end
    end
  end
end
