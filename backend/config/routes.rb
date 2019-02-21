Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cantons
      resources :categories
      resources :districts
      resources :places
    end
  end
end
