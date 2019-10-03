# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                                 carts GET    /carts(.:format)                                                                         carts#index
#                                       POST   /carts(.:format)                                                                         carts#create
#                              new_cart GET    /carts/new(.:format)                                                                     carts#new
#                             edit_cart GET    /carts/:id/edit(.:format)                                                                carts#edit
#                                  cart GET    /carts/:id(.:format)                                                                     carts#show
#                                       PATCH  /carts/:id(.:format)                                                                     carts#update
#                                       PUT    /carts/:id(.:format)                                                                     carts#update
#                                       DELETE /carts/:id(.:format)                                                                     carts#destroy
#                              products GET    /products(.:format)                                                                      products#index
#                                       POST   /products(.:format)                                                                      products#create
#                           new_product GET    /products/new(.:format)                                                                  products#new
#                          edit_product GET    /products/:id/edit(.:format)                                                             products#edit
#                               product GET    /products/:id(.:format)                                                                  products#show
#                                       PATCH  /products/:id(.:format)                                                                  products#update
#                                       PUT    /products/:id(.:format)                                                                  products#update
#                                       DELETE /products/:id(.:format)                                                                  products#destroy
#                                orders GET    /orders(.:format)                                                                        orders#index
#                                       POST   /orders(.:format)                                                                        orders#create
#                             new_order GET    /orders/new(.:format)                                                                    orders#new
#                            edit_order GET    /orders/:id/edit(.:format)                                                               orders#edit
#                                 order GET    /orders/:id(.:format)                                                                    orders#show
#                                       PATCH  /orders/:id(.:format)                                                                    orders#update
#                                       PUT    /orders/:id(.:format)                                                                    orders#update
#                                       DELETE /orders/:id(.:format)                                                                    orders#destroy
#                                 users GET    /users(.:format)                                                                         users#index
#                                       POST   /users(.:format)                                                                         users#create
#                              new_user GET    /users/new(.:format)                                                                     users#new
#                             edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                                  user GET    /users/:id(.:format)                                                                     users#show
#                                       PATCH  /users/:id(.:format)                                                                     users#update
#                                       PUT    /users/:id(.:format)                                                                     users#update
#                                       DELETE /users/:id(.:format)                                                                     users#destroy
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :carts
  resources :products
  resources :orders
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end