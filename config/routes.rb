Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/home', to: 'pages#home'
  get '/about-us', to: 'pages#about'
  get '/support', to: 'pages#support'

  get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]

  resources :recipes

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
