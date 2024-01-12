Rails.application.routes.draw do
  # Devise routes for users
  devise_for :users

  # Resources for users, rooms, permissions, and logs
  resources :users
  resources :rooms
  resources :permissions

  # Root route
  root to: 'static#index'

  # Resources for access logs with only index and show actions
  resources :access_logs, only: [:index]

  # Jeśli chcesz uniknąć powtórzeń, upewnij się, że każdy zasób jest zdefiniowany tylko raz.
  # W Twoim oryginalnym pliku 'resources :permissions' było zdefiniowane dwukrotnie,
  # więc usunąłem jedno z tych wystąpień.
end
