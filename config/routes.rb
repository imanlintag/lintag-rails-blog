Rails.application.routes.draw do

  get 'users/new'

  devise_for :create_users
  devise_for :admins
  devise_for :users
	resources :posts do
		resources :comments
	end
	
	root "posts#index"

	get '/about', to: 'pages#about'

	get '/projects', to: 'pages#projects'


end
