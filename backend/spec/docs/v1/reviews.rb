module Docs

  module V1

    module Reviews

      extend Dox::DSL::Syntax

      document :api do
        resource "Reviews" do
          endpoint "/places/1/reviews"
          group "Reviews"
          desc "reviews.md"
        end
      end

      document :index do
        action "Get reviews"
      end

      document :show do
        action "Get a review"
      end

      document :update do
        action "Update a review"
      end

      document :create do
        action "Create a review"
      end

      document :destroy do
        action "Delete a review"
      end

    end

  end

end
