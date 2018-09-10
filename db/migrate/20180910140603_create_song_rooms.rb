class CreateSongRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :song_rooms do |t|
      t.integer :lyricist_id
      t.integer :musician_id
      t.timestamps
    end
  end
end
