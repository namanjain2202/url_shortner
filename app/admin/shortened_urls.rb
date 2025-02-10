ActiveAdmin.register ShortenedUrl do
  permit_params :original_url, :short_code, :custom_alias, :expires_at, :user_id

  index do
    selectable_column
    id_column
    column :original_url
    column :short_code
    column :custom_alias
    column :expires_at
    column :user
    actions
  end
end