Rails.application.routes.draw do

  get 'login', to:"login#index"
  post 'login', to:"login#create"
  get 'logout', to:"login#destroy"
  # show the sign up form
  get 'signup', to:'user#index'
  post 'signup', to:'user#create'
  root 'home#index'
end
