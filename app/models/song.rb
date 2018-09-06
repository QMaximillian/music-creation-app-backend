class Song < ApplicationRecord
  belongs_to :music
  belongs_to :lyric
end
