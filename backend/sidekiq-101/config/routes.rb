require 'sidekiq/web'

# Configure Sidekiq-specific session middleware
Sidekiq::Web.use ActionDispatch::Cookies
Sidekiq::Web.use Rails.application.config.session_store, Rails.application.config.session_options

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  mount Sidekiq::Web => "/sidekiq"

  get '/sidekiq_demo/get-json', to: 'sidekiq_demo#json'
  resources :sidekiq_demo
end
