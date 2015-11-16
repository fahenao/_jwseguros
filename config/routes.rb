Rails.application.routes.draw do
  root 'clients#index'

  resources :cars
  resources :clients
  resources :sureties
  resources :fires

end
