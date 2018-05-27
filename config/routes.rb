Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#new'

  get '/new_user', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  post '/new_user', to: 'users#create'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'

  get '/new_project', to: 'projects#new', as: 'new_project'
  get '/projects/:id', to: 'projects#show', as: 'project'
  get '/projects/:id/edit', to: 'projects#edit', as: 'edit_project'
  post '/new_project', to: 'projects#create'
  put '/projects/:id', to: 'projects#update'
  patch '/projects/:id', to: 'projects#update'

  get '/new_task', to: 'tasks#new', as: 'new_task'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  post '/new_task', to: 'tasks#create'
  put '/tasks/:id', to: 'tasks#update'
  patch '/tasks/:id', to: 'tasks#update'

  #resources :users
  #resources :projects
  #resources :tasks

end
