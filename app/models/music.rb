class Music < ApplicationRecord
  belongs_to :user
  has_many :songs
  has_many :lyrics, through: :songs
end
