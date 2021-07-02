Rails.application.routes.draw do
  resources :ranks
  resources :talents
  resources :specs
  resources :builds
  resources :player_classes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
