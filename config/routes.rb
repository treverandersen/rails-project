Rails.application.routes.draw do
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  resources :users, :tloads 

  resources :bins do
    resources :drivers, :fields, :tloads,  only: [:index, :show]
  end

  resources :drivers do
    resources :tloads, only: [:index, :show]
  end
  
  resources :fields do 
    resources :tloads, only: [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "sessions#home"
end
