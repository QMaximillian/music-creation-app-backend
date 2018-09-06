class LyricSerializer < ActiveModel::Serializer
  attributes :id, :lyric

  belongs_to :user
end
