# == Route Map
#
#                           Prefix Verb   URI Pattern                                                     Controller#Action
#                       pages_home GET    /pages/home(.:format)                                           pages#home
#               appointment_blocks GET    /appointment_blocks(.:format)                                   appointment_blocks#index
#                                  POST   /appointment_blocks(.:format)                                   appointment_blocks#create
#            new_appointment_block GET    /appointment_blocks/new(.:format)                               appointment_blocks#new
#           edit_appointment_block GET    /appointment_blocks/:id/edit(.:format)                          appointment_blocks#edit
#                appointment_block GET    /appointment_blocks/:id(.:format)                               appointment_blocks#show
#                                  PATCH  /appointment_blocks/:id(.:format)                               appointment_blocks#update
#                                  PUT    /appointment_blocks/:id(.:format)                               appointment_blocks#update
#                                  DELETE /appointment_blocks/:id(.:format)                               appointment_blocks#destroy
#              phone_session_types GET    /phone_session_types(.:format)                                  phone_session_types#index
#                                  POST   /phone_session_types(.:format)                                  phone_session_types#create
#           new_phone_session_type GET    /phone_session_types/new(.:format)                              phone_session_types#new
#          edit_phone_session_type GET    /phone_session_types/:id/edit(.:format)                         phone_session_types#edit
#               phone_session_type GET    /phone_session_types/:id(.:format)                              phone_session_types#show
#                                  PATCH  /phone_session_types/:id(.:format)                              phone_session_types#update
#                                  PUT    /phone_session_types/:id(.:format)                              phone_session_types#update
#                                  DELETE /phone_session_types/:id(.:format)                              phone_session_types#destroy
#                   phone_sessions GET    /phone_sessions(.:format)                                       phone_sessions#index
#                                  POST   /phone_sessions(.:format)                                       phone_sessions#create
#                new_phone_session GET    /phone_sessions/new(.:format)                                   phone_sessions#new
#               edit_phone_session GET    /phone_sessions/:id/edit(.:format)                              phone_sessions#edit
#                    phone_session GET    /phone_sessions/:id(.:format)                                   phone_sessions#show
#                                  PATCH  /phone_sessions/:id(.:format)                                   phone_sessions#update
#                                  PUT    /phone_sessions/:id(.:format)                                   phone_sessions#update
#                                  DELETE /phone_sessions/:id(.:format)                                   phone_sessions#destroy
#                   workshop_types GET    /workshop_types(.:format)                                       workshop_types#index
#                                  POST   /workshop_types(.:format)                                       workshop_types#create
#                new_workshop_type GET    /workshop_types/new(.:format)                                   workshop_types#new
#               edit_workshop_type GET    /workshop_types/:id/edit(.:format)                              workshop_types#edit
#                    workshop_type GET    /workshop_types/:id(.:format)                                   workshop_types#show
#                                  PATCH  /workshop_types/:id(.:format)                                   workshop_types#update
#                                  PUT    /workshop_types/:id(.:format)                                   workshop_types#update
#                                  DELETE /workshop_types/:id(.:format)                                   workshop_types#destroy
#                        workshops GET    /workshops(.:format)                                            workshops#index
#                                  POST   /workshops(.:format)                                            workshops#create
#                     new_workshop GET    /workshops/new(.:format)                                        workshops#new
#                    edit_workshop GET    /workshops/:id/edit(.:format)                                   workshops#edit
#                         workshop GET    /workshops/:id(.:format)                                        workshops#show
#                                  PATCH  /workshops/:id(.:format)                                        workshops#update
#                                  PUT    /workshops/:id(.:format)                                        workshops#update
#                                  DELETE /workshops/:id(.:format)                                        workshops#destroy
#                           groups GET    /groups(.:format)                                               groups#index
#                                  POST   /groups(.:format)                                               groups#create
#                        new_group GET    /groups/new(.:format)                                           groups#new
#                       edit_group GET    /groups/:id/edit(.:format)                                      groups#edit
#                            group GET    /groups/:id(.:format)                                           groups#show
#                                  PATCH  /groups/:id(.:format)                                           groups#update
#                                  PUT    /groups/:id(.:format)                                           groups#update
#                                  DELETE /groups/:id(.:format)                                           groups#destroy
#                          clients GET    /clients(.:format)                                              clients#index
#                                  POST   /clients(.:format)                                              clients#create
#                       new_client GET    /clients/new(.:format)                                          clients#new
#                      edit_client GET    /clients/:id/edit(.:format)                                     clients#edit
#                           client GET    /clients/:id(.:format)                                          clients#show
#                                  PATCH  /clients/:id(.:format)                                          clients#update
#                                  PUT    /clients/:id(.:format)                                          clients#update
#                                  DELETE /clients/:id(.:format)                                          clients#destroy
#                            users GET    /users(.:format)                                                users#index
#                                  POST   /users(.:format)                                                users#create
#                         new_user GET    /users/new(.:format)                                            users#new
#                        edit_user GET    /users/:id/edit(.:format)                                       users#edit
#                             user GET    /users/:id(.:format)                                            users#show
#                                  PATCH  /users/:id(.:format)                                            users#update
#                                  PUT    /users/:id(.:format)                                            users#update
#                                  DELETE /users/:id(.:format)                                            users#destroy
#                             root GET    /                                                               pages#home
#                           secure GET    /secure(.:format)                                               pages#secure
#                                  GET    /admin/phone_session_types(.:format)                            phone_session_types#index
#                                  POST   /admin/phone_session_types(.:format)                            phone_session_types#create
#                                  GET    /admin/phone_session_types/new(.:format)                        phone_session_types#new
#                                  GET    /admin/phone_session_types/:id/edit(.:format)                   phone_session_types#edit
#                                  GET    /admin/phone_session_types/:id(.:format)                        phone_session_types#show
#                                  PATCH  /admin/phone_session_types/:id(.:format)                        phone_session_types#update
#                                  PUT    /admin/phone_session_types/:id(.:format)                        phone_session_types#update
#                                  DELETE /admin/phone_session_types/:id(.:format)                        phone_session_types#destroy
#                                  GET    /admin/workshop_types(.:format)                                 workshop_types#index
#                                  POST   /admin/workshop_types(.:format)                                 workshop_types#create
#                                  GET    /admin/workshop_types/new(.:format)                             workshop_types#new
#                                  GET    /admin/workshop_types/:id/edit(.:format)                        workshop_types#edit
#                                  GET    /admin/workshop_types/:id(.:format)                             workshop_types#show
#                                  PATCH  /admin/workshop_types/:id(.:format)                             workshop_types#update
#                                  PUT    /admin/workshop_types/:id(.:format)                             workshop_types#update
#                                  DELETE /admin/workshop_types/:id(.:format)                             workshop_types#destroy
#                                  GET    /admin/groups(.:format)                                         groups#index
#                                  POST   /admin/groups(.:format)                                         groups#create
#                                  GET    /admin/groups/new(.:format)                                     groups#new
#                                  GET    /admin/groups/:id/edit(.:format)                                groups#edit
#                                  GET    /admin/groups/:id(.:format)                                     groups#show
#                                  PATCH  /admin/groups/:id(.:format)                                     groups#update
#                                  PUT    /admin/groups/:id(.:format)                                     groups#update
#                                  DELETE /admin/groups/:id(.:format)                                     groups#destroy
#                                  GET    /admin/clients(.:format)                                        clients#index
#                                  POST   /admin/clients(.:format)                                        clients#create
#                                  GET    /admin/clients/new(.:format)                                    clients#new
#                                  GET    /admin/clients/:id/edit(.:format)                               clients#edit
#                                  GET    /admin/clients/:id(.:format)                                    clients#show
#                                  PATCH  /admin/clients/:id(.:format)                                    clients#update
#                                  PUT    /admin/clients/:id(.:format)                                    clients#update
#                                  DELETE /admin/clients/:id(.:format)                                    clients#destroy
#                                  GET    /admin/users(.:format)                                          users#index
#                                  POST   /admin/users(.:format)                                          users#create
#                                  GET    /admin/users/new(.:format)                                      users#new
#                                  GET    /admin/users/:id/edit(.:format)                                 users#edit
#                                  GET    /admin/users/:id(.:format)                                      users#show
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
#                                  GET    /admin/workshops(.:format)                                      workshops#index
#                                  POST   /admin/workshops(.:format)                                      workshops#create
#                                  GET    /admin/workshops/new(.:format)                                  workshops#new
#                                  GET    /admin/workshops/:id/edit(.:format)                             workshops#edit
#                                  GET    /admin/workshops/:id(.:format)                                  workshops#show
#                                  PATCH  /admin/workshops/:id(.:format)                                  workshops#update
#                                  PUT    /admin/workshops/:id(.:format)                                  workshops#update
#                                  DELETE /admin/workshops/:id(.:format)                                  workshops#destroy
#

Rails.application.routes.draw do
  get 'pages/landing'
  get 'pages/home'

  resources :appointment_blocks
  resources :phone_session_types
  resources :phone_sessions
  resources :workshop_types
  resources :workshops
  resources :groups
  resources :clients
  resources :users

  post '/appointment_block' => 'appointment_blocks#show'
  get '/appointment_block' => 'pages#backbone', :as => 'backbone'

  root :to => 'pages#home'
  get '/secure' => 'pages#secure'

  scope :admin do
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
