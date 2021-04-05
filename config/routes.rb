Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # namespace :flights do
      #   get '/', to: 'flights#index'
      # end
      get '/flights', to: 'flights#index'
      get '/flights/search', to: 'flights#search'
      get '/flights/:id', to: 'flights#show'


      # resources :flights, only: [:search, :index, :show] do
      #   resources :airports
      # end

      # resources :flight_executions
      # resources :bookings, only: :create
    end
  end
end
