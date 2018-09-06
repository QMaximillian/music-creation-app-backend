class User < ApplicationRecord

  has_many :lyrics
  has_many :musics
end
