Rails.application.routes.draw do
  resources :toys
  resources :users
  get '/login' => "pages#new"
  post '/login' => "pages#create"
  delete '/logout' => 'pages#destroy' 
  get '/about' => "pages#about"
  get "/signup" => "users#new"
  post "/signup" => "users#create"
  root "pages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end