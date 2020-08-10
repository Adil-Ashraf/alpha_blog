Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles # , only: [:show, :index, :new, :create, :edit, :update]
  get 'signup', to: 'users#new'
  resources :users, expect: [:new]
end
