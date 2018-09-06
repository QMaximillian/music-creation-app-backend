class MusicSerializer < ActiveModel::Serializer
  attributes :id, :music_text

  has_many :songs
  has_many :lyrics, through: :songs
  belongs_to :user
end
