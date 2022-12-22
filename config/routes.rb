Rails.application.routes.draw do
  resources :toys
  resources :users
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  delete '/logout' => 'sessions#destroy' 
  get '/about' => "sessions#about"
  get "/signup" => "users#new"
  post "/signup" => "users#create"
  root "sessions#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end