require "rails_helper"

RSpec.describe Api::V1::LogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/logs").to route_to("api/v1/logs#index")
    end

    it "routes to #show" do
      expect(get: "/api/v1/logs/1").to route_to("api/v1/logs#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/api/v1/logs").to route_to("api/v1/logs#create")
    end

  end
end
