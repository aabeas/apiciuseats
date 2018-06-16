Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/home', to: 'pages#home'
  get '/about-us', to: 'pages#about'
  get '/support', to: 'pages#support'
  get '/locations', to: 'pages#locations'
  get '/privacy', to: 'pages#privacy'
  get '/terms', to: 'pages#terms'

  get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]

  resources :recipes

  resources :ingredients, except: [:destroy]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
