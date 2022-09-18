require "rails_helper"

RSpec.describe ResultController, type: :routing do
  describe "routing" do
    it "routes to guess the song results" do
      expect(get: "/guess-songs/results").to route_to("result#guess_the_songs_results")
    end

    it "routes to guess the artist results" do
      expect(get: "/guess-artist/results").to route_to("result#guess_the_artist_results")
    end

  end
end