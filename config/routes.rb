Rails.application.routes.draw do
  get 'cookpage/index'
  get 'cookpage', to: "cookpage#index"
  resources :products
  resources :meals
  post '/products/new', to: "products#new"
  root "pages#home"
  get '/home', to: "pages#home"
  
end
