module Docs

  module V1

    module Places

      extend Dox::DSL::Syntax

      document :api do
        resource "Places" do
          endpoint "/places"
          group "Places"
          desc "places.md"
        end
      end

      document :index do
        action "Get places"
      end

      document :show do
        action "Get a place"
      end

      document :nearby do
        action "Get nearby places 16km radius"
      end

      document :update do
        action "Update a place"
      end

      document :create do
        action "Create a place"
      end

      document :destroy do
        action "Delete a place"
      end

    end

  end

end
