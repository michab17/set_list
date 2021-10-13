require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song title' do
    artist = Artist.create!(name: "The Front Bottoms")
    song = artist.songs.create!(title: "Be Nice To Me", length: 167, play_count: 8438)
    song_2 = artist.songs.create!(title: "Lonely Eyes", length: 182, play_count: 84)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the name of the artist for the song' do
    artist = Artist.create!(name: "The Front Bottoms")
    song = artist.songs.create!(title: "Be Nice To Me", length: 167, play_count: 8438)
    song_2 = artist.songs.create!(title: "Lonely Eyes", length: 182, play_count: 84)
    
    visit "/songs/#{song.id}"
    # save_and_open_page
    expect(page).to have_content(artist.name)
  end
end