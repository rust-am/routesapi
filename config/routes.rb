Rails.application.routes.draw do
  resources :sessions, only: :create
  resources :registrations, only: :create
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  resources :routes, only: :create

  root to: "static#home"
end
