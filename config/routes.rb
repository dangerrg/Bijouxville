Rails.application.routes.draw do
  devise_for :jewelers
  scope '/admin' do
   resources :jewelers do
     resources :jewels
   end
   resources :stones
   resources :materials
 end

  root to: "home#index"
  get "home/index"

end
