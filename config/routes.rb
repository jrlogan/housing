Rails.application.routes.draw do
  devise_for :users
  resources :apartments

  root to: 'home#index'
end

