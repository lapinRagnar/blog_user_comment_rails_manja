Rails.application.routes.draw do
  
  get 'users/index'
  devise_for :users
  
  resources :posts do
    post 'comments', to: 'comments#create'
  end


  root 'posts#index'

  
end
