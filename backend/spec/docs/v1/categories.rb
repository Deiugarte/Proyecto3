module Docs

  module V1

    module Categories

      extend Dox::DSL::Syntax

      document :api do
        resource "Categories" do
          endpoint "/categories"
          group "Categories"
          desc "categories.md"
        end
      end

      document :index do
        action "Get categories"
      end

      document :show do
        action "Get a category"
      end

      document :update do
        action "Update a category"
      end

      document :create do
        action "Create a category"
      end

      document :destroy do
        action "Delete a category"
      end

    end

  end

end
