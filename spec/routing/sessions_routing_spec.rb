require "rails_helper"

RSpec.describe SessionsController, type: :routing do
  describe "routing" do
    it "routes to logout" do
      expect(get: "/logout").to route_to("sessions#logout")
    end

    it "routes to login" do
        expect(get: "/sessions/login").to route_to("sessions#login")
    end

  end
end