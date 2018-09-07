class User < ApplicationRecord

  has_many :lyrics
  has_many :musics

  # has_many :songs, through: :lyrics
  # has_many :songs, through: :musics

end
