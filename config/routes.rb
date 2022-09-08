Rails.application.routes.draw do
  # get 'carts/show'
  # get 'products/index'
  # get 'products/show'
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :carts
  resources :products do
    member do
      get :add_to_cart
    end
  end
end
