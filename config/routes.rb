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
  # resources :users
  root to: 'home#index'
  # get '*path', to: 'home#index'
end
