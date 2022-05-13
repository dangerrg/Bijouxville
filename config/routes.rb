Rails.application.routes.draw do
  devise_for :jewelers
  scope '/admin' do
   resources :jewelers
 end

  root to: "home#index"
  get "home/index"

  resources :jewelers
  resources :jewels
  resources :stones
  resources :materials
end
