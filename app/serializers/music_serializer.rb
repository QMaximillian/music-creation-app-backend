class MusicSerializer < ActiveModel::Serializer
  attributes :id, :music_text, :lyric_id

  # has_many :songs
  # has_many :lyrics, through: :songs
  # belongs_to :user
end
