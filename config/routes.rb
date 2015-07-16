# == Route Map
#
#                            Prefix Verb     URI Pattern                                                                Controller#Action
#                              root GET      /                                                                          pages#home
#                             admin GET      /admin(.:format)                                                           session#new
#                             login POST     /login(.:format)                                                           session#create
#                            logout DELETE   /logout(.:format)                                                          session#destroy
#               phone_session_types GET      /admin/phone_session_types(.:format)                                       phone_session_types#index
#                                   POST     /admin/phone_session_types(.:format)                                       phone_session_types#create
#            new_phone_session_type GET      /admin/phone_session_types/new(.:format)                                   phone_session_types#new
#           edit_phone_session_type GET      /admin/phone_session_types/:id/edit(.:format)                              phone_session_types#edit
#                phone_session_type GET      /admin/phone_session_types/:id(.:format)                                   phone_session_types#show
#                                   PATCH    /admin/phone_session_types/:id(.:format)                                   phone_session_types#update
#                                   PUT      /admin/phone_session_types/:id(.:format)                                   phone_session_types#update
#                                   DELETE   /admin/phone_session_types/:id(.:format)                                   phone_session_types#destroy
#                    workshop_types GET      /admin/workshop_types(.:format)                                            workshop_types#index
#                                   POST     /admin/workshop_types(.:format)                                            workshop_types#create
#                 new_workshop_type GET      /admin/workshop_types/new(.:format)                                        workshop_types#new
#                edit_workshop_type GET      /admin/workshop_types/:id/edit(.:format)                                   workshop_types#edit
#                     workshop_type GET      /admin/workshop_types/:id(.:format)                                        workshop_types#show
#                                   PATCH    /admin/workshop_types/:id(.:format)                                        workshop_types#update
#                                   PUT      /admin/workshop_types/:id(.:format)                                        workshop_types#update
#                                   DELETE   /admin/workshop_types/:id(.:format)                                        workshop_types#destroy
#                             users GET      /admin/users(.:format)                                                     users#index
#                                   POST     /admin/users(.:format)                                                     users#create
#                          new_user GET      /admin/users/new(.:format)                                                 users#new
#                         edit_user GET      /admin/users/:id/edit(.:format)                                            users#edit
#                              user GET      /admin/users/:id(.:format)                                                 users#show
#                                   PATCH    /admin/users/:id(.:format)                                                 users#update
#                                   PUT      /admin/users/:id(.:format)                                                 users#update
#                                   DELETE   /admin/users/:id(.:format)                                                 users#destroy
# appointment_block_calendar_export GET      /admin/appointment_blocks/:appointment_block_id/exp(.:format)              appointment_blocks#export
#    appointment_block_appointments GET      /admin/appointment_blocks/:appointment_block_id/appointments(.:format)     appointments#index
#                                   POST     /admin/appointment_blocks/:appointment_block_id/appointments(.:format)     appointments#create
# new_appointment_block_appointment GET      /admin/appointment_blocks/:appointment_block_id/appointments/new(.:format) appointments#new
#                  edit_appointment GET      /admin/appointments/:id/edit(.:format)                                     appointments#edit
#                       appointment GET      /admin/appointments/:id(.:format)                                          appointments#show
#                                   PATCH    /admin/appointments/:id(.:format)                                          appointments#update
#                                   PUT      /admin/appointments/:id(.:format)                                          appointments#update
#                                   DELETE   /admin/appointments/:id(.:format)                                          appointments#destroy
#                appointment_blocks GET      /admin/appointment_blocks(.:format)                                        appointment_blocks#index
#                                   POST     /admin/appointment_blocks(.:format)                                        appointment_blocks#create
#             new_appointment_block GET      /admin/appointment_blocks/new(.:format)                                    appointment_blocks#new
#            edit_appointment_block GET      /admin/appointment_blocks/:id/edit(.:format)                               appointment_blocks#edit
#                 appointment_block GET      /admin/appointment_blocks/:id(.:format)                                    appointment_blocks#show
#                                   PATCH    /admin/appointment_blocks/:id(.:format)                                    appointment_blocks#update
#                                   PUT      /admin/appointment_blocks/:id(.:format)                                    appointment_blocks#update
#                                   DELETE   /admin/appointment_blocks/:id(.:format)                                    appointment_blocks#destroy
#                    phone_sessions GET      /admin/phone_sessions(.:format)                                            phone_sessions#index
#                                   POST     /admin/phone_sessions(.:format)                                            phone_sessions#create
#                 new_phone_session GET      /admin/phone_sessions/new(.:format)                                        phone_sessions#new
#                edit_phone_session GET      /admin/phone_sessions/:id/edit(.:format)                                   phone_sessions#edit
#                     phone_session GET      /admin/phone_sessions/:id(.:format)                                        phone_sessions#show
#                                   PATCH    /admin/phone_sessions/:id(.:format)                                        phone_sessions#update
#                                   PUT      /admin/phone_sessions/:id(.:format)                                        phone_sessions#update
#                                   DELETE   /admin/phone_sessions/:id(.:format)                                        phone_sessions#destroy
#             workshop_participants GET      /admin/workshops/:workshop_id/participants(.:format)                       participants#index
#                                   POST     /admin/workshops/:workshop_id/participants(.:format)                       participants#create
#          new_workshop_participant GET      /admin/workshops/:workshop_id/participants/new(.:format)                   participants#new
#                  edit_participant GET      /admin/participants/:id/edit(.:format)                                     participants#edit
#                       participant GET      /admin/participants/:id(.:format)                                          participants#show
#                                   PATCH    /admin/participants/:id(.:format)                                          participants#update
#                                   PUT      /admin/participants/:id(.:format)                                          participants#update
#                                   DELETE   /admin/participants/:id(.:format)                                          participants#destroy
#                 project_workshops GET      /admin/projects/:project_id/workshops(.:format)                            workshops#index
#                                   POST     /admin/projects/:project_id/workshops(.:format)                            workshops#create
#              new_project_workshop GET      /admin/projects/:project_id/workshops/new(.:format)                        workshops#new
#                     edit_workshop GET      /admin/workshops/:id/edit(.:format)                                        workshops#edit
#                          workshop GET      /admin/workshops/:id(.:format)                                             workshops#show
#                                   PATCH    /admin/workshops/:id(.:format)                                             workshops#update
#                                   PUT      /admin/workshops/:id(.:format)                                             workshops#update
#                                   DELETE   /admin/workshops/:id(.:format)                                             workshops#destroy
#                          projects GET      /admin/projects(.:format)                                                  projects#index
#                                   POST     /admin/projects(.:format)                                                  projects#create
#                       new_project GET      /admin/projects/new(.:format)                                              projects#new
#                      edit_project GET      /admin/projects/:id/edit(.:format)                                         projects#edit
#                           project GET      /admin/projects/:id(.:format)                                              projects#show
#                                   PATCH    /admin/projects/:id(.:format)                                              projects#update
#                                   PUT      /admin/projects/:id(.:format)                                              projects#update
#                                   DELETE   /admin/projects/:id(.:format)                                              projects#destroy
#                          bookings POST     /bookings(.:format)                                                        backbone#index
#                                   GET      /backbone/:code/participants(.:format)                                     backbone#participants
#                                   GET      /backbone/:code/appointments(.:format)                                     backbone#appointments
#                                   PUT      /backbone/:code/appointments/:id(.:format)                                 backbone#make_booking
#                         websocket GET|POST /websocket(.:format)                                                       websocket_rails
#

Rails.application.routes.draw do
  root :to => 'pages#home'

  # Sessions
  get '/admin' => 'session#new'
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy'

  scope :admin do
    resources :phone_session_types
    resources :workshop_types
    resources :users
    # resources :coaching_sessions
    resources :appointment_blocks, :shallow => true do
      get 'exp' => 'appointment_blocks#export', :as => "calendar_export"
      resources :appointments
    end

    resources :phone_sessions

    resources :projects, :shallow => true do
      resources :workshops, :shallow => true do
        resources :participants
      end
    end
  end

  

  # get '/xls_demo' => 'pages#xls_demo'

  post '/bookings' => 'backbone#index'
  scope :backbone do
    get '/:code/participants' => 'backbone#participants'
    get '/:code/appointments' => 'backbone#appointments'
    put '/:code/appointments/:id' => 'backbone#make_booking'
  end



end













