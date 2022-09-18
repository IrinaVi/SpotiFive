require "rails_helper"

RSpec.describe GamesController, type: :routing do
  describe "routing" do
    it "routes to guess the songs" do
      expect(get: "/guess-songs").to route_to("games#guess_the_songs")
    end

    it "routes to guess the artist" do
      expect(get: "/guess-artist").to route_to("games#guess_the_artist")
    end

  end
end
