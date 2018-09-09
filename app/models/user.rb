class User < ApplicationRecord
  has_many :music_channels
  has_many :music_messages, through: :music_channels


  def self.all_username
    users = User.all
    users.map do |user|
      {
        'username' => user.username,
        'identifier' => user.identifier
      }
  end
end
end
