require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @the_front_bottoms = Artist.create!(name: "The Front Bottoms")
        @song_1 = @the_front_bottoms.songs.create!(title: "Be Nice To Me", length: 167, play_count: 8438)
        @song_2 = @the_front_bottoms.songs.create!(title: "Lonely Eyes", length: 182, play_count: 84)
        @other_song = @the_front_bottoms.songs.create!(title: "Another Song", length: 1, play_count: 1)
      end

      it 'returns the average song length' do
        expect(@the_front_bottoms.average_song_length.round(2)).to eq(116.67)
      end
    end
  end
end