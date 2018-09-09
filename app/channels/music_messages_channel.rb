class MusicMessagesChannel < ApplicationCable::Channel
  def subscribed
    music_channel = MusicChannel.find(params[:music_channel])
    stream_for music_channel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
