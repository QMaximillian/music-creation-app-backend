class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.text :music_text
      t.integer :user_id
      t.timestamps
    end
  end
end
