Rails.application.routes.draw do
  resources :products
  resources :meals
  post '/products/new', to: "products#new"
  root "pages#home"
  get '/home', to: "pages#home"
  
end
