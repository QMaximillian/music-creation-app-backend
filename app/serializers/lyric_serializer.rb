class LyricSerializer < ActiveModel::Serializer
  attributes :id, :lyric

  has_many :songs
  has_many :musics, through: :songs
  belongs_to :user
end
