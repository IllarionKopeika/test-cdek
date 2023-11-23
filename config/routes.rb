Rails.application.routes.draw do
  root to: 'orders#index'

  resources :orders, only: %i[index, new, create, show, edit, update, destroy] do
    get 'tariffs/new', to: 'tariffs#new'
    post 'tariffs', to: 'tariffs#create'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
