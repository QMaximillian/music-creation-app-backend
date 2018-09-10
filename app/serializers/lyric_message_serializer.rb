class LyricMessageSerializer < ActiveModel::Serializer
  attributes :id, :song_room_id, :content, :song_room, :lyricist
end
