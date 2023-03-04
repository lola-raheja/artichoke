Rails.application.routes.draw do
  get 'bids/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :collections, only: %i[show]
  resources :artworks, only: %i[show] do
    resources :bids, only: %i[create destroy update]
  end
end
