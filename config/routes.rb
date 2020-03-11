Rails.application.routes.draw do
  devise_for :users
  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resources :users, only: [:index, :create]
  end
end
