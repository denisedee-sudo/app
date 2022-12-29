Rails.application.routes.draw do
  resources :toys
  resources :users
  get '/profile/edit' => "users#profile_edit"
  patch '/profile/edit' => "users#profile_update"
  get '/profile' => "users#profile"
  get "/signup" => "users#new"
  post "/signup" => "users#create"
  get '/admin/index' => "users#index"
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  delete '/logout' => 'sessions#destroy' 
  get '/about' => "sessions#about"
  get '/feed' => "sessions#feed"
  root "sessions#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end