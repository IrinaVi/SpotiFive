require 'rails_helper'

RSpec.describe "scoreboard/index.html.erb", type: :view do
  
  before(:each) do
    assign(:users, [
      User.create!(
        email: "Email1",
        name: "Irina",
        image_url: "Image Url",
        total_score_hard: 20,
        total_score_easy: 25,
        num_games_hard: 2,
        num_games_easy: 1,
        auth_token: "Auth Token",
        refresh_token: "Refresh Token"
      ),
      User.create!(
        email: "Email",
        name: "Julien",
        image_url: "Image Url",
        total_score_hard: 54,
        total_score_easy: 100,
        num_games_hard: 2,
        num_games_easy: 7,
        auth_token: "Auth Token",
        refresh_token: "Refresh Token"
      )
    ])
  end

  before(:each) do
    assign(:games, [
      Game.create!(
        user_id: 1,
        artist_id: "456rtgfg",
        artist_name: "Test artist name",
        score: 20,
        hard: true,
      ),
      Game.create!(
        user_id: 2,
        artist_id: "45435gfg",
        artist_name: "Another Test artist name",
        score: 100,
        hard: false,
      )
    ])
  end

  it "renders the scores for both users" do
    render
    assert_select "h1", text: "Global scoreboard", count: 1
    assert_select "h2", text: "Guess the songs", count: 1
    assert_select "tr>th", text: "Name".to_s, count: 1
    assert_select "tr>th", text: "Number of Games".to_s, count: 1
    assert_select "tr>th", text: "Total Score".to_s, count: 1
    assert_select "tr>th", text: "Average Score".to_s, count: 1
    assert_select "tr>td", text: 12.to_s, count: 1
    assert_select "tr>td", text: 2.to_s, count: 1
    assert_select "tr>td", text: 3.to_s, count: 1
    assert_select "tr>td", text: 23.to_s, count: 1
    assert_select "tr>td", text: 'Irina'.to_s, count: 1
    assert_select "tr>td", text: 'Julien'.to_s, count: 1
    assert_select "a", text: "Return to Home Page".to_s, count: 1
  end
end
