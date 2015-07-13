# == Route Map
#
#                           Prefix Verb   URI Pattern                                                     Controller#Action
#                    pages_landing GET    /pages/landing(.:format)                                        pages#landing
#                       pages_home GET    /pages/home(.:format)                                           pages#home
#                appointment_block POST   /appointment_block(.:format)                                    appointment_blocks#show
#                         backbone GET    /appointment_block(.:format)                                    pages#backbone
#                             root GET    /                                                               pages#home
#                           secure GET    /secure(.:format)                                               pages#secure
#              phone_session_types GET    /admin/phone_session_types(.:format)                            phone_session_types#index
#                                  POST   /admin/phone_session_types(.:format)                            phone_session_types#create
#           new_phone_session_type GET    /admin/phone_session_types/new(.:format)                        phone_session_types#new
#          edit_phone_session_type GET    /admin/phone_session_types/:id/edit(.:format)                   phone_session_types#edit
#               phone_session_type GET    /admin/phone_session_types/:id(.:format)                        phone_session_types#show
#                                  PATCH  /admin/phone_session_types/:id(.:format)                        phone_session_types#update
#                                  PUT    /admin/phone_session_types/:id(.:format)                        phone_session_types#update
#                                  DELETE /admin/phone_session_types/:id(.:format)                        phone_session_types#destroy
#                   workshop_types GET    /admin/workshop_types(.:format)                                 workshop_types#index
#                                  POST   /admin/workshop_types(.:format)                                 workshop_types#create
#                new_workshop_type GET    /admin/workshop_types/new(.:format)                             workshop_types#new
#               edit_workshop_type GET    /admin/workshop_types/:id/edit(.:format)                        workshop_types#edit
#                    workshop_type GET    /admin/workshop_types/:id(.:format)                             workshop_types#show
#                                  PATCH  /admin/workshop_types/:id(.:format)                             workshop_types#update
#                                  PUT    /admin/workshop_types/:id(.:format)                             workshop_types#update
#                                  DELETE /admin/workshop_types/:id(.:format)                             workshop_types#destroy
#                         projects GET    /admin/projects(.:format)                                       projects#index
#                                  POST   /admin/projects(.:format)                                       projects#create
#                      new_project GET    /admin/projects/new(.:format)                                   projects#new
#                     edit_project GET    /admin/projects/:id/edit(.:format)                              projects#edit
#                          project GET    /admin/projects/:id(.:format)                                   projects#show
#                                  PATCH  /admin/projects/:id(.:format)                                   projects#update
#                                  PUT    /admin/projects/:id(.:format)                                   projects#update
#                                  DELETE /admin/projects/:id(.:format)                                   projects#destroy
#                     participants GET    /admin/participants(.:format)                                   participants#index
#                                  POST   /admin/participants(.:format)                                   participants#create
#                  new_participant GET    /admin/participants/new(.:format)                               participants#new
#                 edit_participant GET    /admin/participants/:id/edit(.:format)                          participants#edit
#                      participant GET    /admin/participants/:id(.:format)                               participants#show
#                                  PATCH  /admin/participants/:id(.:format)                               participants#update
#                                  PUT    /admin/participants/:id(.:format)                               participants#update
#                                  DELETE /admin/participants/:id(.:format)                               participants#destroy
#                            users GET    /admin/users(.:format)                                          users#index
#                                  POST   /admin/users(.:format)                                          users#create
#                         new_user GET    /admin/users/new(.:format)                                      users#new
#                        edit_user GET    /admin/users/:id/edit(.:format)                                 users#edit
#                             user GET    /admin/users/:id(.:format)                                      users#show
#                                  PATCH  /admin/users/:id(.:format)                                      users#update
#                                  PUT    /admin/users/:id(.:format)                                      users#update
#                                  DELETE /admin/users/:id(.:format)                                      users#destroy
#      workshop_appointment_blocks POST   /admin/workshops/:workshop_id/appointment_blocks(.:format)      appointment_blocks#create
#  new_workshop_appointment_blocks GET    /admin/workshops/:workshop_id/appointment_blocks/new(.:format)  appointment_blocks#new
# edit_workshop_appointment_blocks GET    /admin/workshops/:workshop_id/appointment_blocks/edit(.:format) appointment_blocks#edit
#                                  GET    /admin/workshops/:workshop_id/appointment_blocks(.:format)      appointment_blocks#show
#                                  PATCH  /admin/workshops/:workshop_id/appointment_blocks(.:format)      appointment_blocks#update
#                                  PUT    /admin/workshops/:workshop_id/appointment_blocks(.:format)      appointment_blocks#update
#                                  DELETE /admin/workshops/:workshop_id/appointment_blocks(.:format)      appointment_blocks#destroy
#          workshop_phone_sessions GET    /admin/workshops/:workshop_id/phone_sessions(.:format)          phone_sessions#index
#                                  POST   /admin/workshops/:workshop_id/phone_sessions(.:format)          phone_sessions#create
#       new_workshop_phone_session GET    /admin/workshops/:workshop_id/phone_sessions/new(.:format)      phone_sessions#new
#      edit_workshop_phone_session GET    /admin/workshops/:workshop_id/phone_sessions/:id/edit(.:format) phone_sessions#edit
#           workshop_phone_session GET    /admin/workshops/:workshop_id/phone_sessions/:id(.:format)      phone_sessions#show
#                                  PATCH  /admin/workshops/:workshop_id/phone_sessions/:id(.:format)      phone_sessions#update
#                                  PUT    /admin/workshops/:workshop_id/phone_sessions/:id(.:format)      phone_sessions#update
#                                  DELETE /admin/workshops/:workshop_id/phone_sessions/:id(.:format)      phone_sessions#destroy
#                        workshops GET    /admin/workshops(.:format)                                      workshops#index
#                                  POST   /admin/workshops(.:format)                                      workshops#create
#                     new_workshop GET    /admin/workshops/new(.:format)                                  workshops#new
#                    edit_workshop GET    /admin/workshops/:id/edit(.:format)                             workshops#edit
#                         workshop GET    /admin/workshops/:id(.:format)                                  workshops#show
#                                  PATCH  /admin/workshops/:id(.:format)                                  workshops#update
#                                  PUT    /admin/workshops/:id(.:format)                                  workshops#update
#                                  DELETE /admin/workshops/:id(.:format)                                  workshops#destroy
#

Rails.application.routes.draw do
  get 'pages/landing'
  get 'pages/home'

  # resources :appointment_blocks
  # resources :phone_session_types
  # resources :phone_sessions
  # resources :workshop_types
  # resources :workshops
  # resources :groups
  # resources :clients
  # resources :users

  post '/appointment_block' => 'appointment_blocks#show'
  get '/appointment_block' => 'pages#backbone', :as => 'backbone'

  root :to => 'pages#home'
  get '/secure' => 'pages#secure'

  scope :admin do
    resources :phone_session_types
    resources :workshop_types
    resources :projects
    resources :participants
    resources :users

    resources :workshops do
      resource :appointment_blocks
      resources :phone_sessions
    end
  end
end
