EmberHelloWorld::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :players
      resources :admins
    end
  end
  root to: 'home#index'
  get '*path', to: 'home#index'
end
