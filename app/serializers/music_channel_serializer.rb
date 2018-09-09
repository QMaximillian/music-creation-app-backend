class MusicChannelSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name
  has_one :music_message
  belongs_to :user

  # serializer: MusicMessageSerializer,
  # include_nested_associations: true
  # has_one :user, serializer: UserSerializer
end
