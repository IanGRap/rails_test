Rails.application.routes.draw do

  get 'tasks/new'

  get 'projects/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'session#destroy'

  get '/project', to: 'projects#new'
  post '/project', to: 'projects#create'

  get '/task', to: 'tasks#new'
  post '/task', to: 'tasks#create'

  resources :users
  resources :projects
  resources :tasks

end
