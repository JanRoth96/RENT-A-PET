Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pets, except: [:edit, :update] do
    resources :bookings, only: [:new, :create, :index]
  end

  resources :bookings, only: [:index, :destroy, :edit, :update]

  resources :shelters do
    resources :pets, only: [:index]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


end
