class MusicMessage < ApplicationRecord
    belongs_to :song_room, foreign_key: :song_room_id
    has_one :musician, :class_name => 'User', through: :song_room, :foreign_key => :musician_id

    # https://github.com/QMaximillian/music-creation-app-backend/blob/master/app/controllers/api/v1/musics_controller.rb
    #
    # https://stackoverflow.com/questions/40957889/rails-5-api-undefined-method-user-url
end
