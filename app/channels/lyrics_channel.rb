class LyricsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "lyrics"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    lyric_message = LyricMessage.find(data["id"])
    lyric_message.update!(content: data["content"])
    ActionCable.server.broadcast('lyric_messages', data)
  end
end
