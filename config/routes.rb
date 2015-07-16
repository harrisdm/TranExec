# == Route Map
#
#                  Prefix Verb     URI Pattern                                         Controller#Action
#        backbone_clients GET      /backbone/clients(.:format)                         backbone#clients
#       coaching_sessions GET      /coaching_sessions(.:format)                        coaching_sessions#index
#                         POST     /coaching_sessions(.:format)                        coaching_sessions#create
#    new_coaching_session GET      /coaching_sessions/new(.:format)                    coaching_sessions#new
#   edit_coaching_session GET      /coaching_sessions/:id/edit(.:format)               coaching_sessions#edit
#        coaching_session GET      /coaching_sessions/:id(.:format)                    coaching_sessions#show
#                         PATCH    /coaching_sessions/:id(.:format)                    coaching_sessions#update
#                         PUT      /coaching_sessions/:id(.:format)                    coaching_sessions#update
#                         DELETE   /coaching_sessions/:id(.:format)                    coaching_sessions#destroy
#           pages_landing GET      /pages/landing(.:format)                            pages#landing
#              pages_home GET      /pages/home(.:format)                               pages#home
#                xls_demo GET      /xls_demo(.:format)                                 pages#xls_demo
#                bookings POST     /bookings(.:format)                                 backbone#index
#                backbone GET      /bookings(.:format)                                 pages#backbone
#                         GET      /backbone/:code/participants(.:format)              backbone#participants
#                         GET      /backbone/:code/appointments(.:format)              backbone#appointments
#                         PUT      /backbone/:code/appointments/:id(.:format)          backbone#make_booking
#                    root GET      /                                                   pages#home
#                  secure GET      /secure(.:format)                                   pages#secure
#     phone_session_types GET      /admin/phone_session_types(.:format)                phone_session_types#index
#                         POST     /admin/phone_session_types(.:format)                phone_session_types#create
#  new_phone_session_type GET      /admin/phone_session_types/new(.:format)            phone_session_types#new
# edit_phone_session_type GET      /admin/phone_session_types/:id/edit(.:format)       phone_session_types#edit
#      phone_session_type GET      /admin/phone_session_types/:id(.:format)            phone_session_types#show
#                         PATCH    /admin/phone_session_types/:id(.:format)            phone_session_types#update
#                         PUT      /admin/phone_session_types/:id(.:format)            phone_session_types#update
#                         DELETE   /admin/phone_session_types/:id(.:format)            phone_session_types#destroy
#          workshop_types GET      /admin/workshop_types(.:format)                     workshop_types#index
#                         POST     /admin/workshop_types(.:format)                     workshop_types#create
#       new_workshop_type GET      /admin/workshop_types/new(.:format)                 workshop_types#new
#      edit_workshop_type GET      /admin/workshop_types/:id/edit(.:format)            workshop_types#edit
#           workshop_type GET      /admin/workshop_types/:id(.:format)                 workshop_types#show
#                         PATCH    /admin/workshop_types/:id(.:format)                 workshop_types#update
#                         PUT      /admin/workshop_types/:id(.:format)                 workshop_types#update
#                         DELETE   /admin/workshop_types/:id(.:format)                 workshop_types#destroy
#            participants GET      /admin/participants(.:format)                       participants#index
#                         POST     /admin/participants(.:format)                       participants#create
#         new_participant GET      /admin/participants/new(.:format)                   participants#new
#        edit_participant GET      /admin/participants/:id/edit(.:format)              participants#edit
#             participant GET      /admin/participants/:id(.:format)                   participants#show
#                         PATCH    /admin/participants/:id(.:format)                   participants#update
#                         PUT      /admin/participants/:id(.:format)                   participants#update
#                         DELETE   /admin/participants/:id(.:format)                   participants#destroy
#                   users GET      /admin/users(.:format)                              users#index
#                         POST     /admin/users(.:format)                              users#create
#                new_user GET      /admin/users/new(.:format)                          users#new
#               edit_user GET      /admin/users/:id/edit(.:format)                     users#edit
#                    user GET      /admin/users/:id(.:format)                          users#show
#                         PATCH    /admin/users/:id(.:format)                          users#update
#                         PUT      /admin/users/:id(.:format)                          users#update
#                         DELETE   /admin/users/:id(.:format)                          users#destroy
#       project_workshops GET      /admin/projects/:project_id/workshops(.:format)     workshops#index
#                         POST     /admin/projects/:project_id/workshops(.:format)     workshops#create
#    new_project_workshop GET      /admin/projects/:project_id/workshops/new(.:format) workshops#new
#           edit_workshop GET      /admin/workshops/:id/edit(.:format)                 workshops#edit
#                workshop GET      /admin/workshops/:id(.:format)                      workshops#show
#                         PATCH    /admin/workshops/:id(.:format)                      workshops#update
#                         PUT      /admin/workshops/:id(.:format)                      workshops#update
#                         DELETE   /admin/workshops/:id(.:format)                      workshops#destroy
#                projects GET      /admin/projects(.:format)                           projects#index
#                         POST     /admin/projects(.:format)                           projects#create
#             new_project GET      /admin/projects/new(.:format)                       projects#new
#            edit_project GET      /admin/projects/:id/edit(.:format)                  projects#edit
#                 project GET      /admin/projects/:id(.:format)                       projects#show
#                         PATCH    /admin/projects/:id(.:format)                       projects#update
#                         PUT      /admin/projects/:id(.:format)                       projects#update
#                         DELETE   /admin/projects/:id(.:format)                       projects#destroy
#               websocket GET|POST /websocket(.:format)                                websocket_rails
#

Rails.application.routes.draw do

  # devise_for :users

  root :to => 'pages#home'
  get '/secure' => 'pages#secure'

  scope :admin do
    resources :phone_session_types
    resources :workshop_types
    resources :users
    resources :appointment_blocks, :shallow => true do
      get 'exp' => 'appointment_blocks#export'
      resources :appointments
    end

    resources :phone_sessions
    
    resources :projects, :shallow => true do
      resources :workshops, :shallow => true do
        resources :participants
      end
    end
  end

  get 'backbone/clients'

  resources :coaching_sessions
  get 'pages/landing'
  get 'pages/home'

  get '/xls_demo' => 'pages#xls_demo'

  post '/bookings' => 'backbone#index'
  # get '/bookings' => 'pages#backbone', :as => 'backbone'
  scope :backbone do
    get '/:code/participants' => 'backbone#participants'
    get '/:code/appointments' => 'backbone#appointments'
    put '/:code/appointments/:id' => 'backbone#make_booking'
  end



end













