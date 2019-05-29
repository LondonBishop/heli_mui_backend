Rails.application.routes.draw do
  # resources :users

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'

end
