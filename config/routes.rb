Rails.application.routes.draw do
  # devise_for :users
  # routes for Devise and onmiauth
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # routes for Activa Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'carts/show'
  # get 'products/index'
  # get 'products/show'
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :home do
    resource :devise
  end
  # Defines the root path route ("/")
  root to: "home#index"
  resources :carts
  resources :products do
    member do
      get :add_to_cart
    end
  end
end
