class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :music_channels, :music_messages

  # has_many :music_channels
  # has_many :music_messages, through: :music_channels

  # serializer: MusicChannelSerializer, include_nested_associations: true
  # #
  # has_many :music_channels, serializer: MusicChannelSerializer
  # serializer: LyricChannelSerializer




end
