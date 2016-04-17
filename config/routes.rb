DrewLab::Application.routes.draw do
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
  root to: 'research_sessions#new'
  get "home", to: "research_sessions#new"
  resources :players, only: [:new, :create, :update]
  get "register", to: "players#new"
  resources :research_sessions, only: [:new, :create, :destroy]
  resources :researches, only: [:show]
  resources :data_output_risk_balloon, only: [:new, :create]
  resources :results, only:[:index]
  resources :thank_you, only:[:index]
  get "thankyou", to: "thank_you#index"


  # get '*path', to: 'home#index'
  resources :risk_balloon_games, only: [:show]
end
