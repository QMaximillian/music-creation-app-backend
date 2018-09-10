module Api
  module V1
    class LyricMessagesController < ApplicationController

      def index
        @lyric_messages = LyricMessage.all

        render json: @lyric_messages
      end

      def create
          @lyric_message = LyricMessage.new(@lyric_message_params)
          serialized_data = LyricChannel.find(@lyric_message_params[:lyric_channel_id])
          if @lyric_message.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
              LyricMessageSerializer.new(@lyric_message)
            ).serializable_hash
            LyricMessagesChannel.broadcast_to 'lyrics_channel', serialized_data
            head :ok
            end
        end

      private

      def lyric_message_params
        params.require(:lyric_message).permit(:lyric_channel_id, :content)
      end
    end
  end
end
