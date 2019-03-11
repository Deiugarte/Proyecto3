module Docs

  module V1

    module Logs

      extend Dox::DSL::Syntax

      document :api do
        resource "Logs" do
          endpoint "/logs"
          group "Logs"
          desc "logs.md"
        end
      end

      document :index do
        action "Get logs"
      end

      document :show do
        action "Get a log"
      end

      document :update do
        action "Update a log"
      end

      document :create do
        action "Create a log"
      end

      document :destroy do
        action "Delete a log"
      end

    end

  end

end
