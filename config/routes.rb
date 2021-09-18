Rails.application.routes.draw do 

  # get 'blogs/index'
  # get 'blogs/new'
  # post 'blogs/create'

  root 'pages#index'
  get 'pages/index'

  devise_for :users, controllers: {
    confirmations: '/users/sign_in',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }
  
  # resources :users
   resources :posts
   resources :blogs
   resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
