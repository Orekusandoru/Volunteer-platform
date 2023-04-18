Rails.application.routes.draw do
  resources :requests
  get 'home/about'

  root "home#index"
end
