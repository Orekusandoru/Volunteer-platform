Rails.application.routes.draw do
  devise_for :users
  resources :requests
  get 'home/about'

  root "home#index"
end
