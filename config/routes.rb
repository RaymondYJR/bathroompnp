Rails.application.routes.draw do
  devise_for :users
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'
  get 'bathrooms/index'
  get 'bathrooms/show'
  get 'bathrooms/new'
  get 'bathrooms/create'
  get 'bathrooms/edit'
  get 'bathrooms/update'
  get 'bathrooms/destroy'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :bathrooms
  end
end
