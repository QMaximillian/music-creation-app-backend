class SongRoom < ApplicationRecord

  belongs_to :lyricist, class_name: 'User'
  belongs_to :musician, class_name: 'User'

  has_one :music_message
  has_one :lyric_message

  # has_one :music_channel
  # has_one :lyric_channel
  #
  #
  #
  # has_one :lyric_message, through: :lyric_channel
  # has_one :music_message, through: :music_channel
  # has_many :music_messages, through: :music_channel
end
