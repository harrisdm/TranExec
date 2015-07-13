Rails.application.routes.draw do
  resources :appointment_blocks
  resources :phone_session_types
  resources :phone_sessions
  resources :workshop_types
  resources :workshops
  resources :groups
  resources :clients
  resources :users
end
