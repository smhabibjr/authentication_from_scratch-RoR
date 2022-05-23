Rails.application.routes.draw do

  root 'home#index'

  get '/sign_up', to: "student#index"

  post '/sign_up', to:"student#create"
end
