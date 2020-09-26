Rails.application.routes.draw do
  root 'home#top'
  get "home/about" => "home#about"
  devise_for :users
  resources :books, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :create, :edit, :update, :index]
end
