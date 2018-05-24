Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#new'

  get '/new_user', to: 'users#new'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/user/:id/edit', to: 'users#edit', as: 'edit_user'
  post '/new_user', to: 'users#create'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'

  get '/project', to: 'projects#new'
  post '/project', to: 'projects#create'

  get '/task', to: 'tasks#new'
  post '/task', to: 'tasks#create'

  #resources :users
  #resources :projects
  #resources :tasks

end
