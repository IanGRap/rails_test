Rails.application.routes.draw do
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users#new'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :users

end
