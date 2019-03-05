ActiveAdmin.register Province do
  config.filters = false
  actions :all, except: %i[destroy new edit]

  index do
    selectable_column
    column :name
    column "Número de cantones" do |province|
      province.cantons.count
    end
    column :created_at
    actions
  end
end
