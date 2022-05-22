Rails.application.routes.draw do

  get 'sign_up', to: "student#index"
  post 'sign_up', to: "student#create"
  root 'home#index'
end
