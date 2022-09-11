Rails.application.routes.draw do
  root to: 'urls#index'

  get 'r', to: 'redirects#index'
  resources :urls, only: :create
end
