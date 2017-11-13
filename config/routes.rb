Rails.application.routes.draw do
  
	resources :users 
	# do
	# 	resources :posts
	# 	resources :comments
	# end

	resources :comments
	# , only: [:show, :edit, :update, :destroy]
	resources :posts
	# a, only: [:show, :edit, :update, :destroy]

  root 'home#index'

  get '/login' => 'login#new', as: 'login'
  delete '/logout' => 'login#destroy', as: 'logout'
  post '/login' => 'login#create', as: 'login_info'
	# <http verb> <url> => <controller#action>, as: <prefix>

	resources :friends
	# resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
