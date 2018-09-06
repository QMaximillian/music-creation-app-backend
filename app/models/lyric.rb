class Lyric < ApplicationRecord
  belongs_to :user
  has_many :songs
  has_many :musics, through: :songs
end
