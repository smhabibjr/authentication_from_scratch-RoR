Rails.application.routes.draw do

  # show the sign up form
  get 'signup', to:'user#index'
  post 'signup', to:'user#create'
  root 'home#index'
end
