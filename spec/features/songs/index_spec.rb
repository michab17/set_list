require 'rails_helper'

RSpec.describe 'Songs Index' do
  it 'lists all songs titles and play counts' do
    artist = Artist.create!(name: "The Front Bottoms")
    song_1 = artist.songs.create!(title: "Be Nice To Me", length: 167, play_count: 8438)
    song_2 = artist.songs.create!(title: "Lonely Eyes", length: 182, play_count: 84)


    visit '/songs'

    expect(page).to have_content(song_1.title)
    expect(page).to have_content(song_1.play_count)
    expect(page).to have_content(song_2.title)
    expect(page).to have_content(song_2.play_count)
  end
end