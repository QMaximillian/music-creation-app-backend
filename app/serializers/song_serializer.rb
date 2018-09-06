class SongSerializer < ActiveModel::Serializer
  attributes :id, :lyric_id, :music_id

  belongs_to :music
  belongs_to :lyric
end
