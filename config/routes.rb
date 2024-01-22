Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  #get 'login', to: 'devise/sessions#new'
  #delete 'logout', to: 'devise/sessions#destroy'
  #get '/logout', to: 'devise/sessions#destroy', as: :destroy_user_session

  resources :users
  resources :rooms
  resources :permissions
  resources :cards

  # Root route
  root to: redirect('/login')
  get '/dashboard', to: 'users#dashboard', as: 'dashboard'
  #get '/dashboard', to: 'dashboard#show'

  get '/users_list', to: 'users#list'
  get '/reset_password', to: 'users#reset_password_form'
  post '/send_reset_password', to: 'users#send_reset_password', as: 'send_reset_password'

  #get '/login', to: redirect('/')

  resources :access_logs, only: [:index]

end
