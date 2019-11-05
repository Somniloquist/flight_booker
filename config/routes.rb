Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "flights#index"
  resources :bookings, only: [:new, :create]
end
