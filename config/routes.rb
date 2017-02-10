Rails.application.routes.draw do
  resources :items

  get '/items', to: 'items#index'
  post '/items', to: 'items#create'
end
