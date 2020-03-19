Rails.application.routes.draw do
  #devise_for :users
  namespace :v1, defaults: { format: :json } do
    resource :sessions, only: %i(create)
    resources :users, only: %i(index create)
  end
end
