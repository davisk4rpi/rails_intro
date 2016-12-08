Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
  	resources :comments
  end
  resources :tags
  resources :authors
  root to: 'articles#index'

	resources :author_sessions, only: [ :new, :create, :destroy ]

	get 'login'  => 'author_sessions#new'
	get 'logout' => 'author_sessions#destroy'

end
