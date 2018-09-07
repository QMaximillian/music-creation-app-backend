class Lyric < ApplicationRecord
  belongs_to :user
  has_one :music
  
end
