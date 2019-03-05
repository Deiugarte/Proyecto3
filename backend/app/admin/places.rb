ActiveAdmin.register Place do
  config.per_page = 30
  remove_filter :category_places

  permit_params :id,
                :name,
                :telephone,
                :email,
                :latitude,
                :longitude,
                :province_id,
                :canton_id,
                :district_id

  index do
    selectable_column
    column :name
    column :telephone
    column :email
    column :province
    column :canton
    column :district
    column :created_at
    actions
  end
end
