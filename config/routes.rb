Rails.application.routes.draw do
  # root    "microposts#new"
  root     "homes#index"
  get      '/about' ,   to: 'homes#about'
  get      '/practice', to: 'homes#practice'
  get      '/play',     to: 'homes#play'
  get      '/signup',   to: 'users#new'
  get      '/login',    to: 'sessions#new'
  post     '/login',    to: 'sessions#create'
  delete   '/logout',   to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :microposts, only: [:create, :destroy]
end
