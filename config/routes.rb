Rails.application.routes.draw do
  resources :sessions, only: :create
  resources :registrations, only: :create
  delete :logout, to: "sessions#logout"
  get :logged_id, to: "sessions#logged_in"

  root to: "static#home"
end
