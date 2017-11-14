Rails.application.routes.draw do
  resources :checks
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/home', to: 'pages#home'
  get '/index', to: 'pages#index'
  get '/users/:id', to: 'pages#index'
  root to: "pages#index"
  root 'pages#index'
  get '/setup', to:'pages#setup'

end
