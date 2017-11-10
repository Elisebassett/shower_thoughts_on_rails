Rails.application.routes.draw do
  
  resources :home
	resources :comments
	resources :login
	resources :friends
	resources :users
	resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
