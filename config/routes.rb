Rails.application.routes.draw do

  get 'password_reset/new'

  get 'password_reset/edit'

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/players', to: 'players#index'
  get '/players/test', to: 'players#test'
  get '/players/:id', to: 'players#show', as: "player"
  resources :users
  resources :picks
  resources :account_activations, only: [:edit]
  resources :password_resets,    only: [:new, :create, :edit, :update]

  root 'static_pages#home'

end
