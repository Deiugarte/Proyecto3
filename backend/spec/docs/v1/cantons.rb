module Docs

  module V1

    module Cantons

      extend Dox::DSL::Syntax

      document :api do
        resource "Cantons" do
          endpoint "/cantons"
          group "Cantons"
          desc "cantons.md"
        end
      end

      document :index do
        action "Get cantons"
      end

      document :show do
        action "Get a canton"
      end

      document :update do
        action "Update a canton"
      end

      document :create do
        action "Create a canton"
      end

      document :destroy do
        action "Delete a canton"
      end

    end

  end

end
