class User < ApplicationRecord

  has_many :lyrics
  has_many :musics
  # has_many :songs, through: :lyrics
end
