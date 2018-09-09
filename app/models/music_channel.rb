class MusicChannel < ApplicationRecord
  has_one :music_message
  belongs_to :user
  # has_one :user, through: :music_message
end
