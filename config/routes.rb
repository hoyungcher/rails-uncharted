Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :countries, param: :slug, only: [:show, :index]
      resources :localities, param: :slug, only: [:show, :index]
      resources :attractions, param: :slug, only: [:show, :index]
      resources :themes, param: :slug, only: [:show, :index]
    end
  end


  resources :sessions, only: [:create]
  resources :registrations, only: [:create]

  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  root to: "static#home"
end
