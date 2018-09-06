class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.integer :lyric_id
      t.integer :music_id

      t.timestamps
    end
  end
end
