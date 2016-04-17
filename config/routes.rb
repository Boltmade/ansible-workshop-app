Rails.application.routes.draw do
  resources :coins, only: [:index, :create]
  get "reset", to: 'coins#reset'

  get "ping" => "ping#index", constraints: { ip: /::1|127\.0\.0\.1/ }

  root "coins#index"
end
