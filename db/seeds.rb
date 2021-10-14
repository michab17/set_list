# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@the_front_bottoms = Artist.create!(name: "The Front Bottoms")
@be_nice_to_me = @the_front_bottoms.songs.create!(title: "Be Nice To Me", length: 167, play_count: 8438)
@lonely_eyes = @the_front_bottoms.songs.create!(title: "Lonely Eyes", length: 182, play_count: 84)
