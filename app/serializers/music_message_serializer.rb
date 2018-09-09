class MusicMessageSerializer < ActiveModel::Serializer
  attributes :id, :music_channel_id, :content
  # belongs_to :music_channel,

  serializer: MusicMessageSerializer, include_nested_associations: true

end
