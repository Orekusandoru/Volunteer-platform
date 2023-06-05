Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}

  resources :requests
  get 'home/about'
  root "home#index"
end
