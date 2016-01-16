Rails.application.routes.draw do
  devise_for :users
  get 'cookpage/index'
  get 'cookpage', to: "cookpage#index"
  resources :products
  resources :meals
  post '/products/new', to: "products#new"
  root "pages#home"
  get '/home', to: "pages#home"
  
end
