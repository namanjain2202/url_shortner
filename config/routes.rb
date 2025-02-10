Rails.application.routes.draw do
  # existing routes...

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end