namespace :api do
  namespace :v1 do
    resources :urls, only: [:create, :show, :update]
  end
end