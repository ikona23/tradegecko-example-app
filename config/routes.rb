Rails.application.routes.draw do
  get '/auth', to: 'sessions#show'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  resources :products, only: [:index, :show]
  resources :variants, only: :show
  resources :barcodes, only: :show
  root to: 'products#index'
end
