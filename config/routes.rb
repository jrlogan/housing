Rails.application.routes.draw do

	resources :programs
	get 'programs/index'

  devise_for :users
  resources :apartments

  root to: 'home#index'
end

