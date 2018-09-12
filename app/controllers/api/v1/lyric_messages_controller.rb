class Api::V1::LyricMessagesController < ApplicationController

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

        def update
          # byebug
          @lyric_message = LyricMessage.find(params[:id])
          @lyric_message.update(content: params["content"])
          render json: @lyric_message
        end

      private

      def lyric_message_params
        params.require(:lyric_message).permit(:lyric_channel_id, :content)
      end
    end
