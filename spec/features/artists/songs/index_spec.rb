require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before :each do
    @artist = Artist.create!(name: "The Front Bottoms")
    @song_1 = @artist.songs.create!(title: "Be Nice To Me", length: 167, play_count: 8438)
    @song_2 = @artist.songs.create!(title: "Lonely Eyes", length: 182, play_count: 84)

  end
  it 'shows all of the titles of the songs for the artist' do

    visit "/artists/#{@artist.id}/songs"
    
    expect(page).to have_content(@song_1.title)
    expect(page).to have_content(@song_2.title)
  end
  
  it 'links to each songs show page' do
    visit "/artists/#{@artist.id}/songs"
    
    click_on @song_1.title
    
    expect(current_path).to eq("/songs/#{@song_1.id}")
  end
  
  it 'shows the average song length for the artist' do
    visit "/artists/#{@artist.id}/songs"
    
    expect(page).to have_content("Average Song Length for The Front Bottoms: 174.5")
  end
end