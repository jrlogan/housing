Rails.application.routes.draw do
  resources :clients,:users

  root to: 'home#index'
  match:'/profile',	to:'clients#profile',	via:'get'
end

