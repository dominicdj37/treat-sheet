Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  resources :home

  get '/parties', to: 'party#index' 
  get 'create_party', to: 'home#create_party' 
  
  root 'home#index'

  get 'delete_party/:id', to: 'home#destroy', as: 'delete_party'

end
