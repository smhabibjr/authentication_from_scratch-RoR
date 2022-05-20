Rails.application.routes.draw do

  get 'sign_up', to: "sign_up#index"
  post 'sign_up', to: "sign_up#create"
  root 'home#index'
end
