class MusicsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "musics_channel"

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_text(data)
    MusicMessage.create(content: data['content'], username: data['username'])
    # ActionCable.server.broadcast('chat_messages_channel', content: data['content'], username: data['username'])
    ActionCable.server.broadcast('musics_channel',
      content: data['content'],
      username: data['username']
    )
  end
end
