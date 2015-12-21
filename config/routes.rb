Rails.application.routes.draw do
  root 'clients#index'

  resources :cars, except: [:update, :destroy]
  resources :clients, except: [:update, :destroy]
  resources :sureties, except: [:update, :destroy]
  resources :fires, except: [:update, :destroy]
  resources :lives, except: [:update, :destroy]
  resources :healths, except: [:update, :destroy]
  resources :contents, except: [:update, :destroy]

end
