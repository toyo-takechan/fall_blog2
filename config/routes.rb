Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
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
  resources :password_resets,     only: [:new, :edit, :create, :update]
  resources :microposts,          only: [:create, :destroy]
end
