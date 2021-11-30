Rails.application.routes.draw do
	root 'leader_boards#index'
	
	resources :leader_boards, only: [:index]
  resources :games
  resources :players do 
  	member do
	  	get :profile
	  end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
