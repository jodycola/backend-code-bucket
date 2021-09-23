Rails.application.routes.draw do

  # USER ROUTES
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/auth', to: 'users#auth'
  post '/login', to: 'users#login'
  post '/signup', to: 'users#signup'


  # PROJECT ROUTES
  get '/projects', to: 'projects#index'
  post '/projects', to: 'projects#create'
  get '/projects/:id', to: 'projects#show'
  delete '/projects/:id', to: 'projects#delete'
  patch '/projects/:id', to: 'projects#update'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
