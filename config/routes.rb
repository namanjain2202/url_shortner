Rails.application.routes.draw do
    devise_for :users, controllers: { sessions: 'users/sessions' }
    namespace :api do
      namespace :v1 do
        resources :urls, only: [:create, :show]
      end
    end
  end