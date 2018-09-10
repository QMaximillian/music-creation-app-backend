class User < ApplicationRecord
  # has_secure_password
  # validates :username


  has_many :lyricist_song_rooms, class_name: 'SongRoom', foreign_key: 'lyricist_id'

  has_many :musician_song_rooms, class_name: 'SongRoom', foreign_key: 'musician_id'

  has_many :lyric_messages, through: :lyricist_song_rooms, :foreign_key => :song_room_id

  has_many :music_messages, through: :musician_song_rooms, :foreign_key => :song_room_id

  # has_many :lyric_messages, through: :lyricist_song_rooms
  #
  # has_many :music_messages, through: :music_song_rooms

  # has_many :music_channels, through: :song_rooms
  # has_many :lyric_channels, through: :song_rooms



end
