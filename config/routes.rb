Rails.application.routes.draw do
  # Devise routes for users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  # Resources for users, rooms, permissions, and logs
  resources :users
  resources :rooms
  resources :permissions
  resources :cards

  # Root route
  root to: 'static#index'
  get '/dashboard', to: 'users#dashboard'

  get '/dashboard', to: 'dashboard#show'

  get '/users_list', to: 'users#list'
  get '/reset_password', to: 'users#reset_password_form'
  post '/send_reset_password', to: 'users#send_reset_password', as: 'send_reset_password'


  # Resources for access logs with only index and show actions
  resources :access_logs, only: [:index]

  # Jeśli chcesz uniknąć powtórzeń, upewnij się, że każdy zasób jest zdefiniowany tylko raz.
  # W Twoim oryginalnym pliku 'resources :permissions' było zdefiniowane dwukrotnie,
  # więc usunąłem jedno z tych wystąpień.
end
