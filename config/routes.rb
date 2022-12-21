Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/signup'
  get 'pages/about'
  resources :toys
  resources :users
  get "/signup" => "users#new"
  post "/signup" => "users#create"
  root "pages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end