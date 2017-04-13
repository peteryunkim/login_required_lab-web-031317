Rails.application.routes.draw do
  
  get '/', to: 'sessions#show', as: :home
  get '/new', to: 'sessions#new', as: :login
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/secrets', to: 'secrets#show', as: :secret
  
end
