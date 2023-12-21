Rails.application.routes.draw do
  resources :protos, only: :index
end
