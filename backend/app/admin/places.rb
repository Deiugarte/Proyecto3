ActiveAdmin.register Place do
  remove_filter :category_places

  permit_params :id,
                :name,
                :telephone,
                :email,
                :latitude,
                :longitude,
                :description,
                :province_id,
                :canton_id,
                :district_id,
                :categories,
                category_ids: []

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

  form do |f|
    f.semantic_errors
    f.inputs except: :address
    if f.object.new_record? || f.object.categories.blank? && f.object.categories.where(ancestry: nil).first.blank?
      inputs do
        input :categories, label: "Categoría Principal", collection: Category.all.where(ancestry: nil).collect { |c| [c.name, c.id] }, required: true
      end
    else
      inputs do
        main_category = f.object.categories.first
        main_category = main_category.parent if main_category.subcategory?
        input :categories, label: "Subcategorías", collection: Category.all.where(ancestry: main_category).collect { |c| [c.name, c.id] }, as: :check_boxes
      end
    end
    f.actions
  end
end
