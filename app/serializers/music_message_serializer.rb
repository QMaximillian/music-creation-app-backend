class MusicMessageSerializer < ActiveModel::Serializer
  attributes :id, :song_room_id, :content, :song_room, :musician
  # belongs_to :music_channel,

  # serializer: MusicMessageSerializer, include_nested_associations: true

end
