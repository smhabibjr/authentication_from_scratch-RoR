Rails.application.routes.draw do

  get 'post/index'
  get 'post/show'
  get 'post/new'
  get 'post/update'



  get 'dashboard/index'
  resources :account_signup, only: [:index, :create]
  resources :account_login, only: [:index, :create]

  #get '/account_login/index'
  root 'home#index'
  get 'student/index'
  get 'student/show/:id' => 'student#show', as: 'student_show'
  get 'student/new'
  post '/student/create' => 'student#create'
  get '/student/edit/:id' => 'student#edit', as: 'student_edit'
  patch '/student/update/:id' => 'student#update', as: 'student_update'
  delete '/student/destroy/:id' => 'student#destroy'
  resources :articles
end
