Rails.application.routes.draw do
  devise_for :users
  get 'cookpage/index'
  get 'cookpage', to: "cookpage#index"
  resources :products
  resources :meals
  post '/products/new', to: "products#new"
  root "pages#home"
  get '/home', to: "pages#home"
   %w( 404 422 500 503 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
end
