require "rails_helper"

RSpec.describe HomeController, type: :routing do
  describe "routing" do
    it "routes to home" do
      expect(get: "/home").to route_to("home#index")
    end

  end
end