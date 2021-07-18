Rails.application.routes.draw do 
  root 'pages#index'
  get 'pages/index'
  get 'post/new'
  get 'post/index'

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }
  
  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
