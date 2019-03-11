Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount_devise_token_auth_for "User", at: "/api/v1/auth", controllers: {
    registrations: "api/v1/users/registrations",
  }
  namespace :api do
    namespace :v1 do
      resources :cantons
      resources :categories
      resources :districts
      resources :places do
        get "nearby", action: :nearby, on: :member
      end
      resources :logs, only: %i[index show create]
    end
  end
end
