class CreateLyricMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :lyric_messages do |t|
    t.integer :song_room_id
    t.text :content
    end
  end
end
