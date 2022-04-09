Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  get '/sidekiq_demo/get-json', to: 'sidekiq_demo#json'
  resources :sidekiq_demo
end
