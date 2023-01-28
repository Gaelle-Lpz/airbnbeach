Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :beaches do
    resources :reviews
    resources :bookings
  end
  get "my_bookings", to: "bookings#my_bookings"
  get "my_beaches", to: "beaches#my_beaches"
  get "card", to: "beaches#card"
  get "change_status/:id", to: "bookings#change_status", as: "change_status"
end
