Rails.application.routes.draw do

  get 'cloudfiles/index'

  get 'cloudfiles/new'

  get 'cloudfiles/show'

  get 'cloudfiles/edit'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'

  devise_for :users
  resources :cloudfiles   
  resources :pages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
