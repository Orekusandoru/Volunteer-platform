Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :comments
  resources :requests
  resources :requests do
    resources :comments
    delete 'destroy_all', on: :collection
  end
  get 'home/about'
  root "home#index"
end
