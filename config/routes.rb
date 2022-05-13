Rails.application.routes.draw do
  devise_for :jewelers
  root to: "home#index"
  get "home/index"

  resources :jewelers
  resources :jewels
  resources :stones
  resources :materials
end
