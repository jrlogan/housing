Rails.application.routes.draw do

	resources :programs
	get 'programs/index'

  devise_for :users
  resources :apartments
	get 'apartments/:id/recommend' => "home#recommend", as: 'recommend_path'

  root to: 'home#index'
end

