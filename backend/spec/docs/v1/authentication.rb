module Docs

  module V1

    module Authentication

      extend Dox::DSL::Syntax

      document :api do
        resource "Authentication" do
          endpoint "/auth"
          group "Authentication"
          desc "authentication.md"
        end
      end

      document :user_registration do
        action "Sign In" do
          path "/auth"
          verb "POST"
          desc "Registration for new user"
        end
      end

      document :edit_user_registration do
        action "Update User Info" do
          path "/auth"
          verb "PUT"
          desc "Update info for existing user"
        end
      end

    end

  end

end
