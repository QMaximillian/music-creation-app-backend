class Music < ApplicationRecord
  belongs_to :user
  has_one :lyric, class_name: "Lyric", :foreign_key => 'lyric_id'
  # has_many :songs
  # has_many :lyrics, through: :songs
end
