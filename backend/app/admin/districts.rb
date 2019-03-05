ActiveAdmin.register District do
  config.per_page = 30
  permit_params :name, :description, :canton_id

  index do
    selectable_column
    column :name
    column :description
    column "Provincia" do |district|
      district.canton.province.name if district.canton.province.name?
    end
    column :canton
    column :created_at
    actions
  end
end
