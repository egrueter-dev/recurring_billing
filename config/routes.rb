Rails.application.routes.draw do

  # Admin transactions
  resources :subscriptions, only: [:new, :create]

end
