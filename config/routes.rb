Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/articles', to: 'articles#index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  root 'articles#index'
  
  resources :articles
  
  # get '/articles', to: 'articles#index'
  # post '/articles', to: 'articles#create'
  # get '/articles/new', to: 'articles#new'
  # get '/articles/:id', to: 'articles#show', as: :article
  # patch '/articles/:id', to: 'articles#update'
  # get '/articles/:id/edit', to: 'articles#edit'
  # delete '/articles/:id', to: 'articles#destroy'
  # # get '/articles/new', to: 'articles#new'
end
