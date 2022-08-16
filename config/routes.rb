Rails.application.routes.draw do
  # get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"

  get '/about' ,   to: 'homes#about'
  get '/practice', to: 'homes#practice'
  get '/play',     to: 'homes#play'
end
