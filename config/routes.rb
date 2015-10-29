Rails.application.routes.draw do

  root 'clients#index'
  resources :bails, only: [:index, :new, :show]
  resources :cars, except: [:edit, :destroy, :update]
end
