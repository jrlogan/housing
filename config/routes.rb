Rails.application.routes.draw do

	resource :programs
	get 'programs/index'

  devise_for :users
  resource :apartments

  root to: 'home#index'
end

