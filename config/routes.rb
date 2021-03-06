Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :profiles
	root 'books#index'
  resources :authors
  resources :categories
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
