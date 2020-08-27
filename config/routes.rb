Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #two differents forms to do

  # get "clients", to: "clients#index"
  # get "clients/:id", to: "clients#show", as: :client
  # get "clients/new", to: "clients#new"
  # post "clients", to: "clients#create"
  # get "clients/:id/edit", to: "clients#edit"
  # patch "clients/:id", to: "clients#update"
  # delete "clients/:id", to: "clients#destroy"

#or
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :clients do
    resources :contacts, only: [ :index, :new, :create ]
  end
  resources :contacts, only: [ :show, :edit, :update, :destroy ]
end
