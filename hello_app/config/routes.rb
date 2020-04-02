Rails.application.routes.draw do
  get 'users/new'

  get '/third', to: "static_pages#third"
  get '/second', to: "static_pages#second"
  get 'static_pages/home'
  root "static_pages#home"
  get '/application/hello'
  get '/signup', to: "users#new"
end
