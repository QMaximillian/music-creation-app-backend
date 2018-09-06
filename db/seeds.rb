# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Quinn")
Music.create(music_text: "LALALA", user_id: 1)
Lyric.create(lyric: "Also, LALALA", user_id: 1)
Song.create(lyric_id: 1, music_id: 1)
