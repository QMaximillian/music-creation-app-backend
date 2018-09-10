class CreateMusicMessages < ActiveRecord::Migration[5.2]
    def change
      create_table :music_messages do |t|
        t.integer :song_room_id
        t.text :content
    end
  end
end
