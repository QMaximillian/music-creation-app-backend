# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Quinn', password: '1234')
User.create(username: 'Quinn', password: '5678')
User.create(username: 'Quinn', password: '91011')
SongRoom.create(musician_id: 1, lyricist_id: 2)
SongRoom.create(musician_id: 1, lyricist_id: 3)
SongRoom.create(lyricist_id: 1, musician_id: 2)
LyricMessage.create(song_room_id: 1, content: "AAAAA")
LyricMessage.create(song_room_id: 2, content: "BBBB")
MusicMessage.create(song_room_id: 1, content: "MusicAAAA")
MusicMessage.create(song_room_id: 2, content: "MusicBBBB")
