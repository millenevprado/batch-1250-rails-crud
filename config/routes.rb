Rails.application.routes.draw do
  # verb 'path', to: 'controller#action'
  # see all restaurants
  get 'restaurants', to: 'restaurants#index'

  # create a restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # see a specific restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # update a restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :restaurant_edit
  patch 'restaurants/:id', to: 'restaurants#update'

  # delete a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # all 7 CRUD routes
  # resources :restaurants

  # only index and show routes
  # resources :restaurants, only: %i[index show]

  # all 7 CRUD routes except index and show
  # resources :restaurants, except: %i[index show]
end
