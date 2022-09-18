require 'rails_helper'

RSpec.describe ScoreboardController, type: :controller do
  describe "GET /scoreboard " do
    it "responds with 301" do
      get :index
      expect(response).to have_http_status(302)
    end

    xit "responds with 200" do
      user = User.create(email: "test@gmail.com", name: "Test Name", auth_token: "sdf444", refresh_token: "sfe4555")
      session[:user] = user
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template("scoreboard/index", "layouts/application")
    end

    xit "responds with 200 status code and returns a hash with all users" do
      user1 = User.create(email: "test1@gmail.com", name: "Test Name 1")
      user2= User.create(email: "test@gmail2.com", name: "Test Name 2")
      assigns(:users).should eq([users])
      end
  end

end
