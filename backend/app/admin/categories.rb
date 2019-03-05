ActiveAdmin.register Category do
  config.per_page = 30
  remove_filter :category_places
  permit_params :name

  index do
    selectable_column
    column :name
    column :created_at
    actions
  end
end
