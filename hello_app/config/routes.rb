Rails.application.routes.draw do
  get 'sessions/new'

  get 'pics/new'

  get 'users/new'

  get '/third', to: "static_pages#third"
  get '/second', to: "static_pages#second"
  get 'static_pages/home'
  root "static_pages#home"
  get '/application/hello'
  get '/signup', to: "users#new"
  post '/signup',  to: "users#create"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :pics
end
