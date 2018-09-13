# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Quinn', password: '1')
User.create(username: 'Marlon', password: '2')
User.create(username: 'Octothorpes', password: '3')

SongRoom.create(musician_id: 1, lyricist_id: 2, song_name: "Idea 1")
SongRoom.create(musician_id: 2, lyricist_id: 1, song_name: "Idea 2")
SongRoom.create(lyricist_id: 3, musician_id: 3, song_name: "Idea 3")
LyricMessage.create(song_room_id: 1, content: "Heart and Soul")
LyricMessage.create(song_room_id: 2, content: "")
LyricMessage.create(song_room_id: 3, content: "")
MusicMessage.create(song_room_id: 1, content: "")
MusicMessage.create(song_room_id: 2, content: "Oops, I, changed state again")
MusicMessage.create(song_room_id: 3, content: "")
