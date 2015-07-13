Rails.application.routes.draw do
  get 'pages/landing'

  resources :appointment_blocks
  resources :phone_session_types
  resources :phone_sessions
  resources :workshop_types
  resources :workshops
  resources :groups
  resources :clients
  resources :users

  root :to => 'pages#landing'
  post '/appointment_block' => 'appointment_blocks#show'

  get '/secure' => 'pages#secure'

  namespace :admin do
    resources :phone_session_types
    resources :workshop_types
    resources :groups
    resources :clients
    resources :users

    resources :workshops do
      resource :appointment_blocks
      resources :phone_sessions
    end
  end
end
