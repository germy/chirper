Rails.application.routes.draw do
  resources :message_hashtags
  resources :hashtags
  resources :message_hashes
  resources :users


  resources :messages
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'

  root :to => 'messages#index'  

end
