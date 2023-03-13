Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :collections, only: :show
  resources :bids, only: %i[show destroy edit update]
  resources :artworks, only: %i[index show] do
    resources :bids, only: %i[create]
  end
  resources :users, only: :show do
    resources :bids, only: :index
  end
end
