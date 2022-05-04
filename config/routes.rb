Rails.application.routes.draw do
  root to: "home#index"
  get "home/index"
  resources :jewelers
  resources :jewels
  resources :stones
end
