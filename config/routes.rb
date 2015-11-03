Rails.application.routes.draw do

  root 'clients#index'
  resources :clients
  resources :bails, only: [:index, :new, :show]
  resources :cars
end
