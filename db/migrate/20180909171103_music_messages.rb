class MusicMessages < ActiveRecord::Migration[5.2]
    def change
      create_table :music_messages do |t|
        t.integer :music_channel_id
        t.text :content
    end
  end
end
