class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :lyricist_song_rooms, :musician_song_rooms, :lyric_messages, :music_messages

   # has_many :song_rooms
   # has_many :music_channels, through: :song_rooms
   # # has_many :music_messages, through: :music_channel
   # has_many :lyric_channels, through: :song_rooms
   # has_many :lyric_messages, through: :song_rooms

# def song_rooms
#   customized_song_rooms = []
#
#   object.song_rooms.each do |song_room|
#     custom_song_room = song_room.attributes
#
#     custom_song_room[:music_channel] = song_room.music_channel.slice(:song_room_id, :name)
#     custom_song_room[:music_message] =
#     song_room.music_message
#     customized_song_rooms.push(custom_song_room)
#   end
#   return customized_song_rooms
# end








end
