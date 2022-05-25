Rails.application.routes.draw do


  root 'home#index'

  get '/sign_up', to: "student#index"
  post '/sign_up', to:"student#create"

  get '/log_in', to: 'session#index'
  post '/log_in', to: 'session#create'

  get 'logout', to: 'session#destroy', as: 'logout'



end
