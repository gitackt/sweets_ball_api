Rails.application.routes.draw do
  resources :charts
  resources :orders
  resources :logs
  resources :portfolios
  resources :assets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
