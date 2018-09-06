class MusicSerializer < ActiveModel::Serializer
  attributes :id, :music_text

  belongs_to :user
end
