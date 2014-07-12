Rails.application.routes.draw do

	resource :programs
	get 'programs/index'

  devise_for :users

  root to: 'home#index'
end

