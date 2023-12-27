Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
<<<<<<< Updated upstream
  resources :prototypes#, only: [:index, :new, :create]
=======
  resources :prototypes
  #resources :users, only: :show
>>>>>>> Stashed changes
end
