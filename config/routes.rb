Rails.application.routes.draw do
  resources :customers
  resources :produce_orders
  devise_for :users
  resources :moving_jobs

  root "moving_jobs#index"
end
