Rails.application.routes.draw do
  #devise_for :users
  namespace :v1, defaults: { format: :json } do
    resource :login, only: %i(create), controller: :sessions
    resources :users, only: %i(index create)
  end
end
