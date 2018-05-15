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

  get '/project', to: 'projects#new'
  post '/project', to: 'projects#create'

  resources :users

end
