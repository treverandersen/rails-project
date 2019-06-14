Rails.application.routes.draw do
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users

  resources :bins 
  resources :drivers
  resources :fields
  resources :tloads
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "sessions#home"
end
