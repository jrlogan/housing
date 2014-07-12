Rails.application.routes.draw do
	resource :programs
  # get 'program/new'

  # get 'program/create'

  # get 'program/update'

  # get 'program/edit'

  # get 'program/destroy'

  # get 'program/index'

  # get 'program/show'

  devise_for :users

  root to: 'home#index'
end

