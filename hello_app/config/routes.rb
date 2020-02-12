Rails.application.routes.draw do
  get 'thirdpage/third'

  get 'secondpage/second'
 
  # get 'homepage/home'
  get "/", to: "homepage#home", as: "root"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'application/hello'
end
