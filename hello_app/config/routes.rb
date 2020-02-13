Rails.application.routes.draw do
  #  get 'thirdpage/third' 
  get 'thirdpage/third'
  get 'secondpage/second'
 
  get 'homepage/home'
  # get "/", to: "homepage#home", as: "root"
  root 'homepage#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'application/hello'
end
