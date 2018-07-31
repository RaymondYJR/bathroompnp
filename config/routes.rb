Rails.application.routes.draw do
  devise_for :users
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'
  get 'bathroom/index'
  get 'bathroom/show'
  get 'bathroom/new'
  get 'bathroom/create'
  get 'bathroom/edit'
  get 'bathroom/update'
  get 'bathroom/destroy'
  root to: 'pages#home'
  resources :users do
    resources :bathrooms
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :bathrooms
  end
end
