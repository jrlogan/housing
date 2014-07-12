Rails.application.routes.draw do
  devise_for :users
  resources :clients

  root to: 'home#index'
  
  match:'/profile', to:'home#profile',via:'get'
end

