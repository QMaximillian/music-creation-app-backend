class SongRoomSerializer < ActiveModel::Serializer
  attributes :id, :lyricist_id, :musician_id, :song_name, :lyric_message, :music_message
  # has_one :music_channel
  # has_one :music_message
  # has_one :lyric_channel
  # has_one :lyric_message
  # belongs_to :music_channel,

  # serializer: MusicMessageSerializer, include_nested_associations: true

end
