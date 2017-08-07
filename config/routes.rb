Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  
  resources :users
	#this route was added manually
	resources :orders, only: [:index, :show, :create, :destroy]

	#these routes were added with scaffolding
  resources :products

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  root 'static_pages#index'

  post 'static_pages/thank_you'

  #root 'static_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
