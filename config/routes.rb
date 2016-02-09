EmberHelloWorld::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # namespace :api do
  #   namespace :v1 do
  #     resources :users
  #     resources :players
  #     resources :admins
  #   end
  # end

  devise_scope :user do
    get "login", to: "devise/sessions#new"

  end
  resources :user, only: [:show]
  root to: 'home#index'
  # get '*path', to: 'home#index'
end
