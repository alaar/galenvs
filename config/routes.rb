Rails.application.routes.draw do

  # devise_for :admins, :skip => [:registerable], path: 'admins', controllers: { sessions: "admins/sessions" } do
  #   resources :products, only: [:create]
  #   resources :users
  # end
  # authenticated :admin do
  #   root  to: 'pages#home'
  # end
  # resources :products, only: [:show, :update, :index]
  # devise_for :users, :controllers => { :invitable => 'users/invitations'}


  root to: 'pages#home'

  get 'support', to: 'pages#support', as: :support
  get 'about', to: 'pages#about', as: :about
  get 'soon', to: 'pages#soon', as: :soon

  resources :contacts, only: [:new, :create, :index]

end

