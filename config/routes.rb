Rails.application.routes.draw do
  resources :coins, only: [:index, :create]
  get "reset", to: 'coins#reset'

  root "coins#index"
end
