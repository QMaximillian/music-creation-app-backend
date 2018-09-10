class LyricMessage < ApplicationRecord
  belongs_to :song_room, foreign_key: :song_room_id
  has_one :lyricist, :class_name => 'User', through: :song_room, :foreign_key => :lyricist_id
end
