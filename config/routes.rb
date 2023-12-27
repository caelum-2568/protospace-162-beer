Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
<<<<<<< Updated upstream
  resources :prototypes, only: [:index, :new, :create, :edit, :update]
=======
  resources :prototypes#, only: [:index, :new, :create]
  resources :users, only: :show
>>>>>>> Stashed changes
end
