Rails.application.routes.draw do
  
  root 'pages#index'
  get 'pages/nouveaute'
  get 'pages/membre'
  get 'pages/apropos'

  get 'users/index'

  devise_for :users
  
  resources :posts do
    post 'comments', to: 'comments#create'
  end


  

  
end
