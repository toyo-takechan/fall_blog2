Rails.application.routes.draw do
  get 'sessions/new'
  root     "homes#index"
  get      '/about' ,   to: 'homes#about'
  get      '/practice', to: 'homes#practice'
  get      '/play',     to: 'homes#play'
  get      '/signup',   to: 'users#new'
  get      '/login',    to: 'sessions#new'
  post     '/login',    to: 'sessions#create'
  delete   '/logout',   to: 'sessions#destroy'
  resources :users
end
