Rails.application.routes.draw do
  root "homes#index"
  get '/about' ,   to: 'homes#about'
  get '/practice', to: 'homes#practice'
  get '/play',     to: 'homes#play'
  resources :users
end
