Rails.application.routes.draw do
  get 'pics/new'

  get 'users/new'

  get '/third', to: "static_pages#third"
  get '/second', to: "static_pages#second"
  get 'static_pages/home'
  root "static_pages#home"
  get '/application/hello'
  get '/signup', to: "users#new"
  post '/signup',  to: "users#create"
  resources :users
  resources :pics
end
