Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  match:'/profile', to:'home#profile',via:'get'
end

