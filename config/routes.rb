Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :travels
  resources :rockets
  resources :companies
  resources :destinations
  get "/chooseDestination", to: "destinations#choose"
  get "/chooseDestination/:destId", to: "rockets#choose"

  get "/travels/:destId/:rocketId", to: "travels#selected"
  get "/updateTravels", to: "travels#updateTravels"


  root :to => "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
