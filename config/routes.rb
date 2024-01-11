Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :rooms
  resources :permissions
  resources :logs
  root to: 'static#index'
  # Opcjonalnie: ścieżka do logów
  resources :access_logs, only: [:index, :show]
end
