Rails.application.routes.draw do
  root to: 'prototypes#index'
  resources :protos, only: :index
end
