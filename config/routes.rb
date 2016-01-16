Rails.application.routes.draw do
  resources :products
  resources :items
  root "pages#home"
  get '/home', to: "pages#home"
  
end
