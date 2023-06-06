Rails.application.routes.draw do

  get 'render/index'
  # root :to => 'pages#home' used to have this line, replaced with line 5
  root 'render#index'
  resources :users
  resources :shelters
  resources :animals

# This is NOT CRUD: don't use resources
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/favorites' => 'favorites#index'
  post '/favorites/:animal_id' => 'favorites#add_animal', :as => "animal_id"
  delete '/favorites/:animal_id' => 'favorites#remove_animal'
end
