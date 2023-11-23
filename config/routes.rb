Rails.application.routes.draw do
  get 'tariffs/index'
  get 'tariffs/new'
  get 'tariffs/show'
  get 'tariffs/create'
  resources :orders, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
