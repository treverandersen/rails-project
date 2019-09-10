Rails.application.routes.draw do
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/auth/:provider/callback' => 'sessions#create'
  
  get '/most-loads' => 'users#loads'

  resources :bins do
    resources :tloads, only: [:index, :new, :create]
    resources :fields, only: [:index]
    resources :drivers, only: [:index]
  end

  resources :drivers do
    resources :tloads, only: [:index, :new, :create]
    resources :bins, only: [:index]
    resources :fields, only: [:index]
  end
  
  resources :fields do 
    resources :tloads, only: [:index, :new, :create]
    resources :bins, only: [:index]
    resources :drivers, only: [:index]
  end

  resources :drivers
  resources :fields
  resources :bins
  resources :tloads
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "sessions#home"
end
