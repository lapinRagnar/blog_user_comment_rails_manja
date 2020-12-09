Rails.application.routes.draw do
  
  devise_for :users
  root 'pages#index'
  get 'pages/nouveaute'
  get 'pages/membre'
  get 'pages/apropos'

  get 'users/index'

  
  
  resources :posts do
    post 'comments', to: 'comments#create'
  end


  

  
end
