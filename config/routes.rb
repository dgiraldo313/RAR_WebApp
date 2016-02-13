EmberHelloWorld::Application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # namespace :api do
  #   namespace :v1 do
  #     resources :users
  #     resources :players
  #     resources :admins
  #   end
  # end

  devise_scope :admin do
    get "login", to: "devise/sessions#new"

  end

  resources :players, only: [:new, :create]
  get "register", to: "players#new"
  resources :research_sessions, only: [:new, :create]
  resources :researches, only: [:show]
  root to: 'research_sessions#new'
  # get '*path', to: 'home#index'
end
