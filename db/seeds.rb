# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
    artist = Artist.new(name: Faker::Music::RockBand.name)
    10.times do
        artist.songs.build(title: Faker::Music::RockBand.song)
    end
    artist.save
end