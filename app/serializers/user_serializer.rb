class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :lyrics
  has_many :musics
end
