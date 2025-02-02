Rails.application.routes.draw do
  devise_for :users
  resources :shortened_urls, only: [:create]
  get '/:id', to: 'redirect#show'
end