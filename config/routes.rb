Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: {registrations: "registrations" } 
  resources :users
	
	resources :orders, only: [:index, :show, :create, :destroy] #this route was added manually

  resources :products do
    resources :comments
  end

  resources :payments
  

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  root 'static_pages#index'

  post 'static_pages/thank_you'

  post 'payments/create'

  #root 'static_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
end
