ActiveAdmin.register ShortenedUrl do
  actions :all, except: [:new, :edit]

  index do
    selectable_column
    id_column
    column :original_url
    column :shortened_url
    column :clicks
    column :referrer
    column :geolocation
    column :device_type
    column :expires_at
    column :custom_alias
    column :created_at
    actions
  end

  action_item :deactivate, only: :show do
    link_to 'Deactivate', deactivate_admin_shortened_url_path(resource), method: :put if resource.active?
  end

  member_action :deactivate, method: :put do
    resource.update(active: false)
    redirect_to admin_shortened_url_path(resource)
  end
end