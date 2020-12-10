Rails.application.routes.draw do
  
  get 'dashboard/index'
  devise_for :users
  root 'pages#index'
  get 'pages/nouveaute'
  get 'pages/membre'
  get 'pages/apropos'

  get 'users/index'

  
  
  resources :posts do
    post 'comments', to: 'comments#create'
    delete 'comment', to: 'comments#destroy'
  end


  

  
end
