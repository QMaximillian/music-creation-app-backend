class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :lyrics, :musics
  
end
