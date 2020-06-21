Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create, :edit]

# This is NOT CRUD: don't use resources
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/:id/edit' => 'users#edit'
  # get '/users/new' => ''
  post '/users/:id/edit' => 'users#update'

end
