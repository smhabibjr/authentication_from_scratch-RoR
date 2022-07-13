Rails.application.routes.draw do
  get 'passwor/reset', to: "password_reset#index", as: "password_reset_form"
  post 'password/reset' => "password_reset#create", as: "password_reset"
  get 'password/reset/edit' => "password_reset#edit", as: "password_reset_edit"
  patch 'password/reset/edit' => "password_reset#update"


  get 'password/reset/edit' => "password_reset#edit"
  post 'password/reset/edit' => "password_reset#update"
  # Reset password

  # change passwor
  get "password/edit" => "change_pass#index"
  patch "password/edit" => "change_pass#update"
  # login page
  get 'login', to:"login#index"
  post 'login', to:"login#create"
  get 'logout', to:"login#destroy"
  # show the sign up form
  get 'signup', to:'user#index'
  post 'signup', to:'user#create'
  root 'home#index'
end
