Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products do
	get :who_bought, on: :member
  end
  root 'store#index',as: 'store' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
