module Docs

  module V1

    module Districts

      extend Dox::DSL::Syntax

      document :api do
        resource "Districts" do
          endpoint "/districts"
          group "Districts"
          desc "districts.md"
        end
      end

      document :index do
        action "Get districts"
      end

      document :show do
        action "Get a district"
      end

      document :update do
        action "Update a district"
      end

      document :create do
        action "Create a district"
      end

      document :destroy do
        action "Delete a district"
      end

    end

  end

end
