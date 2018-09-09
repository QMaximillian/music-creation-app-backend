class MusicMessage < ApplicationRecord
    belongs_to :music_channel

    # https://github.com/QMaximillian/music-creation-app-backend/blob/master/app/controllers/api/v1/musics_controller.rb
    #
    # https://stackoverflow.com/questions/40957889/rails-5-api-undefined-method-user-url
end
