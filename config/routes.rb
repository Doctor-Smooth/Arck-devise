Rails.application.routes.draw do 
  get 'blogs/new'

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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
