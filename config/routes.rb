Rails.application.routes.draw do


  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/players', to: 'players#index'
  get '/players/:id', to: 'players#show', as: "player"
  resources :users
  root 'static_pages#home'
  resources :microposts,          only: [:create, :destroy]


end
