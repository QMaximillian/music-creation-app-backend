class MusicMessageSerializer < ActiveModel::Serializer
  attributes :id, :music_channel_id, :content
  belongs_to :music_channel

end
