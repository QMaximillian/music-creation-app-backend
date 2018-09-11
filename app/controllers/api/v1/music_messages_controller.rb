class Api::V1::MusicMessagesController < ApplicationController

      def index
        @music_messages = MusicMessage.all

        render json: @music_messages
      end

      def create
          @music_message = MusicMessage.new(@music_message_params)
          serialized_data = MusicChannel.find(@music_message_params[:music_channel_id])
          if @music_message.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
              MusicMessageSerializer.new(@music_message)
            ).serializable_hash
            MusicMessagesChannel.broadcast_to 'musics_channel', serialized_data
            head :ok
            end
        end

      private

      def music_message_params
        params.require(:music_message).permit(:music_channel_id, :content)
      end
end
