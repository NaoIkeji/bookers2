Rails.application.routes.draw do
  devise_for :users
  get "/" =>'home#index'
  get "home/about" =>'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
end
