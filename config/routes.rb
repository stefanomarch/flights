Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/flights', to: 'flights#index'
      get '/flights/search/:flight', to: 'flights#search'
      get '/flights/:id', to: 'flights#show'
      post '/flights/:id/book', to: 'bookings#create'
      get '/bookings', to: 'bookings#index'
      get '/bookings/:id', to: 'bookings#show'
    end
  end
end
