Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :comments
  resources :requests
  resources :requests do
    resources :comments
  end
  get 'home/about'
  root "home#index"
end
