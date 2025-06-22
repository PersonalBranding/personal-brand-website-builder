# == Route Map
#
#                                         Prefix Verb   URI Pattern                                                                                       Controller#Action
#                                                       /assets                                                                                           Propshaft::Server
#                                           jobs        /jobs                                                                                             MissionControl::Jobs::Engine
#                           api_v1_github_events POST   /api/v1/github-events(.:format)                                                                   api/v1/github_events#handle {:format=>:json}
#                                    new_session GET    /session/new(.:format)                                                                            sessions#new
#                                   edit_session GET    /session/edit(.:format)                                                                           sessions#edit
#                                        session GET    /session(.:format)                                                                                sessions#show
#                                                PATCH  /session(.:format)                                                                                sessions#update
#                                                PUT    /session(.:format)                                                                                sessions#update
#                                                DELETE /session(.:format)                                                                                sessions#destroy
#                                                POST   /session(.:format)                                                                                sessions#create
#                                      passwords GET    /passwords(.:format)                                                                              passwords#index
#                                                POST   /passwords(.:format)                                                                              passwords#create
#                                   new_password GET    /passwords/new(.:format)                                                                          passwords#new
#                                  edit_password GET    /passwords/:token/edit(.:format)                                                                  passwords#edit
#                                       password GET    /passwords/:token(.:format)                                                                       passwords#show
#                                                PATCH  /passwords/:token(.:format)                                                                       passwords#update
#                                                PUT    /passwords/:token(.:format)                                                                       passwords#update
#                                                DELETE /passwords/:token(.:format)                                                                       passwords#destroy
#                                     admin_root GET    /admin(.:format)                                                                                  admin/main#root
#                        admin_post_translations GET    /admin/posts/:post_id/translations(.:format)                                                      admin/translations#index
#                                                POST   /admin/posts/:post_id/translations(.:format)                                                      admin/translations#create
#                     new_admin_post_translation GET    /admin/posts/:post_id/translations/new(.:format)                                                  admin/translations#new
#                    edit_admin_post_translation GET    /admin/posts/:post_id/translations/:id/edit(.:format)                                             admin/translations#edit
#                         admin_post_translation PATCH  /admin/posts/:post_id/translations/:id(.:format)                                                  admin/translations#update
#                                                PUT    /admin/posts/:post_id/translations/:id(.:format)                                                  admin/translations#update
#                                                DELETE /admin/posts/:post_id/translations/:id(.:format)                                                  admin/translations#destroy
#                                    admin_posts POST   /admin/posts(.:format)                                                                            admin/posts#create
#                                 new_admin_post GET    /admin/posts/new(.:format)                                                                        admin/posts#new
#                                edit_admin_post GET    /admin/posts/:id/edit(.:format)                                                                   admin/posts#edit
#                                     admin_post PATCH  /admin/posts/:id(.:format)                                                                        admin/posts#update
#                                                PUT    /admin/posts/:id(.:format)                                                                        admin/posts#update
#                                                DELETE /admin/posts/:id(.:format)                                                                        admin/posts#destroy
#                               admin_categories GET    /admin/categories(.:format)                                                                       admin/categories#index
#                    admin_social_media_accounts GET    /admin/social_media_accounts(.:format)                                                            admin/social_media_accounts#index
#                edit_admin_social_media_account GET    /admin/social_media_accounts/:id/edit(.:format)                                                   admin/social_media_accounts#edit
#                     admin_social_media_account PATCH  /admin/social_media_accounts/:id(.:format)                                                        admin/social_media_accounts#update
#                                                PUT    /admin/social_media_accounts/:id(.:format)                                                        admin/social_media_accounts#update
#                                 admin_settings GET    /admin/settings(.:format)                                                                         admin/settings#index
#                             edit_admin_setting GET    /admin/settings/:id/edit(.:format)                                                                admin/settings#edit
#                                  admin_setting PATCH  /admin/settings/:id(.:format)                                                                     admin/settings#update
#                                                PUT    /admin/settings/:id(.:format)                                                                     admin/settings#update
#                      admin_github_app_settings GET    /admin/github_app_settings(.:format)                                                              admin/github_app_settings#index
#                  edit_admin_github_app_setting GET    /admin/github_app_settings/:id/edit(.:format)                                                     admin/github_app_settings#edit
#                       admin_github_app_setting PATCH  /admin/github_app_settings/:id(.:format)                                                          admin/github_app_settings#update
#                                                PUT    /admin/github_app_settings/:id(.:format)                                                          admin/github_app_settings#update
# send_verification_email_admin_email_subscriber POST   /admin/email_subscribers/:id/send_verification_email(.:format)                                    admin/email_subscribers#send_verification_email
#                        admin_email_subscribers GET    /admin/email_subscribers(.:format)                                                                admin/email_subscribers#index
#                                                POST   /admin/email_subscribers(.:format)                                                                admin/email_subscribers#create
#                     new_admin_email_subscriber GET    /admin/email_subscribers/new(.:format)                                                            admin/email_subscribers#new
#                         admin_email_subscriber DELETE /admin/email_subscribers/:id(.:format)                                                            admin/email_subscribers#destroy
#                                  admin_locales GET    /admin/locales(.:format)                                                                          admin/locales#index
#                                                POST   /admin/locales(.:format)                                                                          admin/locales#create
#                               new_admin_locale GET    /admin/locales/new(.:format)                                                                      admin/locales#new
#                              edit_admin_locale GET    /admin/locales/:id/edit(.:format)                                                                 admin/locales#edit
#                                   admin_locale GET    /admin/locales/:id(.:format)                                                                      admin/locales#show
#                                                PATCH  /admin/locales/:id(.:format)                                                                      admin/locales#update
#                                                PUT    /admin/locales/:id(.:format)                                                                      admin/locales#update
#                                                DELETE /admin/locales/:id(.:format)                                                                      admin/locales#destroy
#                                   admin_themes GET    /admin/themes(.:format)                                                                           admin/themes#index
#                               edit_admin_theme GET    /admin/themes/:id/edit(.:format)                                                                  admin/themes#edit
#                                    admin_theme PATCH  /admin/themes/:id(.:format)                                                                       admin/themes#update
#                                                PUT    /admin/themes/:id(.:format)                                                                       admin/themes#update
#                                  admin_resumes GET    /admin/resumes(.:format)                                                                          admin/resumes#index
#                               new_admin_resume GET    /admin/resumes/new(.:format)                                                                      admin/resumes#new
#                              edit_admin_resume GET    /admin/resumes/:id/edit(.:format)                                                                 admin/resumes#edit
#                                   admin_resume PATCH  /admin/resumes/:id(.:format)                                                                      admin/resumes#update
#                                                PUT    /admin/resumes/:id(.:format)                                                                      admin/resumes#update
#                                                DELETE /admin/resumes/:id(.:format)                                                                      admin/resumes#destroy
#                         admin_technical_skills GET    /admin/technical_skills(.:format)                                                                 admin/technical_skills#index
#                                                POST   /admin/technical_skills(.:format)                                                                 admin/technical_skills#create
#                      new_admin_technical_skill GET    /admin/technical_skills/new(.:format)                                                             admin/technical_skills#new
#                     edit_admin_technical_skill GET    /admin/technical_skills/:id/edit(.:format)                                                        admin/technical_skills#edit
#                          admin_technical_skill PATCH  /admin/technical_skills/:id(.:format)                                                             admin/technical_skills#update
#                                                PUT    /admin/technical_skills/:id(.:format)                                                             admin/technical_skills#update
#                                                DELETE /admin/technical_skills/:id(.:format)                                                             admin/technical_skills#destroy
#                      admin_professional_skills GET    /admin/professional_skills(.:format)                                                              admin/professional_skills#index
#                                                POST   /admin/professional_skills(.:format)                                                              admin/professional_skills#create
#                   new_admin_professional_skill GET    /admin/professional_skills/new(.:format)                                                          admin/professional_skills#new
#                  edit_admin_professional_skill GET    /admin/professional_skills/:id/edit(.:format)                                                     admin/professional_skills#edit
#                       admin_professional_skill PATCH  /admin/professional_skills/:id(.:format)                                                          admin/professional_skills#update
#                                                PUT    /admin/professional_skills/:id(.:format)                                                          admin/professional_skills#update
#                                                DELETE /admin/professional_skills/:id(.:format)                                                          admin/professional_skills#destroy
#                                admin_interests GET    /admin/interests(.:format)                                                                        admin/interests#index
#                                                POST   /admin/interests(.:format)                                                                        admin/interests#create
#                             new_admin_interest GET    /admin/interests/new(.:format)                                                                    admin/interests#new
#                            edit_admin_interest GET    /admin/interests/:id/edit(.:format)                                                               admin/interests#edit
#                                 admin_interest PATCH  /admin/interests/:id(.:format)                                                                    admin/interests#update
#                                                PUT    /admin/interests/:id(.:format)                                                                    admin/interests#update
#                                                DELETE /admin/interests/:id(.:format)                                                                    admin/interests#destroy
#                                          posts GET    (/:locale)/posts(.:format)                                                                        posts#index {:locale=>/en|zh/}
#                                    locale_root GET    /(:locale)(.:format)                                                                              posts#index {:locale=>/en|zh/}
#                                   locale_about GET    (/:locale)/about(.:format)                                                                        posts#about {:locale=>/en|zh/}
#                                    locale_hire GET    (/:locale)/hire(.:format)                                                                         posts#hire {:locale=>/en|zh/}
#                               locale_blog_post GET    (/:locale)/blog/:permalink-:id2(.:format)                                                         posts#show {:locale=>/en|zh/}
#                                  locale_resume GET    (/:locale)/resume(.:format)                                                                       resumes#show {:locale=>/en|zh/}
#                                      locale_cv GET    (/:locale)/cv(.:format)                                                                           resumes#show {:locale=>/en|zh/}
#                                     categories GET    (/:locale)/categories(.:format)                                                                   categories#index {:locale=>/en|zh/}
#                                       category GET    (/:locale)/category(.:format)                                                                     categories#index {:locale=>/en|zh/}
#                                                GET    (/:locale)/category/:name(.:format)                                                               categories#show {:locale=>/en|zh/}
#                                  locale_drafts GET    (/:locale)/drafts(.:format)                                                                       categories#drafts_index {:locale=>/en|zh/}
#                                                GET    (/:locale)/drafts/:name(.:format)                                                                 categories#drafts_show {:locale=>/en|zh/}
#                                                GET    /posts(.:format)                                                                                  posts#index
#                                           root GET    /                                                                                                 posts#index
#                                          about GET    /about(.:format)                                                                                  posts#about
#                                           hire GET    /hire(.:format)                                                                                   posts#hire
#                                      blog_post GET    /blog/:permalink-:id2(.:format)                                                                   posts#show
#                                         resume GET    /resume(.:format)                                                                                 resumes#show
#                                             cv GET    /cv(.:format)                                                                                     resumes#show
#                                                GET    /categories(.:format)                                                                             categories#index
#                                                GET    /category(.:format)                                                                               categories#index
#                                                GET    /category/:name(.:format)                                                                         categories#show
#                                         drafts GET    /drafts(.:format)                                                                                 categories#drafts_index
#                                                GET    /drafts/:name(.:format)                                                                           categories#drafts_show
#                                  subscriptions POST   /subscriptions(.:format)                                                                          subscriptions#create
#                           confirm_subscription GET    /subscriptions/confirm/:token(.:format)                                                           subscriptions#confirm
#                             rails_health_check GET    /up(.:format)                                                                                     rails/health#show
#               turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
#               turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
#              turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
#                  rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#                     rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#                  rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#            rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#                  rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#                   rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#                 rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                                POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#              new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
#                  rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
#       new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#          rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#          rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
#       rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
#                             rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                       rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                                GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                      rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#                rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                                GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                             rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                      update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                           rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
#
# Routes for MissionControl::Jobs::Engine:
#     application_queue_pause DELETE /applications/:application_id/queues/:queue_id/pause(.:format) mission_control/jobs/queues/pauses#destroy
#                             POST   /applications/:application_id/queues/:queue_id/pause(.:format) mission_control/jobs/queues/pauses#create
#          application_queues GET    /applications/:application_id/queues(.:format)                 mission_control/jobs/queues#index
#           application_queue GET    /applications/:application_id/queues/:id(.:format)             mission_control/jobs/queues#show
#       application_job_retry POST   /applications/:application_id/jobs/:job_id/retry(.:format)     mission_control/jobs/retries#create
#     application_job_discard POST   /applications/:application_id/jobs/:job_id/discard(.:format)   mission_control/jobs/discards#create
#    application_job_dispatch POST   /applications/:application_id/jobs/:job_id/dispatch(.:format)  mission_control/jobs/dispatches#create
#    application_bulk_retries POST   /applications/:application_id/jobs/bulk_retries(.:format)      mission_control/jobs/bulk_retries#create
#   application_bulk_discards POST   /applications/:application_id/jobs/bulk_discards(.:format)     mission_control/jobs/bulk_discards#create
#             application_job GET    /applications/:application_id/jobs/:id(.:format)               mission_control/jobs/jobs#show
#            application_jobs GET    /applications/:application_id/:status/jobs(.:format)           mission_control/jobs/jobs#index
#         application_workers GET    /applications/:application_id/workers(.:format)                mission_control/jobs/workers#index
#          application_worker GET    /applications/:application_id/workers/:id(.:format)            mission_control/jobs/workers#show
# application_recurring_tasks GET    /applications/:application_id/recurring_tasks(.:format)        mission_control/jobs/recurring_tasks#index
#  application_recurring_task GET    /applications/:application_id/recurring_tasks/:id(.:format)    mission_control/jobs/recurring_tasks#show
#                             PATCH  /applications/:application_id/recurring_tasks/:id(.:format)    mission_control/jobs/recurring_tasks#update
#                             PUT    /applications/:application_id/recurring_tasks/:id(.:format)    mission_control/jobs/recurring_tasks#update
#                      queues GET    /queues(.:format)                                              mission_control/jobs/queues#index
#                       queue GET    /queues/:id(.:format)                                          mission_control/jobs/queues#show
#                         job GET    /jobs/:id(.:format)                                            mission_control/jobs/jobs#show
#                        jobs GET    /:status/jobs(.:format)                                        mission_control/jobs/jobs#index
#                        root GET    /                                                              mission_control/jobs/queues#index

Rails.application.routes.draw do
  mount MissionControl::Jobs::Engine, at: "/jobs", as: :jobs

  namespace :api do
    defaults({ format: :json }) do
      namespace :v1 do
        post "github-events" => "github_events#handle"
      end
    end
  end

  resource :session
  resources :passwords, param: :token

  namespace :admin do
    root to: "main#root"

    resources :posts, only: [ :new, :create, :edit, :update, :destroy ] do
      resources :translations, only: [ :index, :new, :create, :edit, :update, :destroy ]
    end

    resources :categories, only: :index

    resources :social_media_accounts, only: [ :index, :edit, :update ]

    resources :settings, only: [ :index, :edit, :update ]

    resources :github_app_settings, only: [ :index, :edit, :update ]
    resources :email_subscribers, only: %i[index new create destroy] do
      member do
        post :send_verification_email
      end
    end

    resources :locales
    resources :themes, only: [ :index, :edit, :update ]
    resources :resumes, only: [ :new, :index, :edit, :update, :destroy ]
    resources :technical_skills, only: [ :new, :index, :create, :edit, :update, :destroy ]
    resources :professional_skills, only: [ :new, :index, :create, :edit, :update, :destroy ]
    resources :interests, only: [ :new, :index, :create, :edit, :update, :destroy ]
    resources :languages, only: [ :new, :index, :create, :edit, :update, :destroy ]
  end

  # Move to top
  scope "(:locale)", locale: /#{I18n.available_locales.map(&:downcase).join("|")}/ do
    resources :posts, only: [ :index ]
    get "/" => "posts#index", as: :locale_root
    get "about" => "posts#about", as: :locale_about
    get "hire" => "posts#hire", as: :locale_hire
    get "blog/:permalink-:id2" => "posts#show", as: :locale_blog_post
    get "resume" => "resumes#show", as: :locale_resume
    get "cv" => "resumes#show", as: :locale_cv

    resources :categories, only: :index
    get "category" => "categories#index"
    get "category/:name" => "categories#show"
    get "drafts" => "categories#drafts_index", as: :locale_drafts
    get "drafts/:name" => "categories#drafts_show"
  end

  resources :posts, only: [ :index ]
  root "posts#index"
  get "about" => "posts#about", as: :about
  get "hire" => "posts#hire", as: :hire
  get "blog/:permalink-:id2" => "posts#show", as: :blog_post
  get "resume" => "resumes#show", as: :resume
  get "cv" => "resumes#show", as: :cv

  resources :categories, only: :index
  get "category" => "categories#index"
  get "category/:name" => "categories#show"
  get "drafts" => "categories#drafts_index", as: :drafts
  get "drafts/:name" => "categories#drafts_show"

  # Subscription routes
  post "subscriptions" => "subscriptions#create", as: :subscriptions
  get "subscriptions/confirm/:token" => "subscriptions#confirm", as: :confirm_subscription

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
