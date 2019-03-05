ActiveAdmin.register Canton do
  config.per_page = 30
  permit_params :name, :description, :province_id

  index do
    selectable_column
    column :name
    column :description
    column :province
    column :created_at
    actions
  end
end
