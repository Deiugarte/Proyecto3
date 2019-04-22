ActiveAdmin.register Category do
  remove_filter :category_places
  filter :name
  filter :ancestry, collection: lambda {
    Category.all.where(ancestry: nil).map { |c| [c.name, c.id] }
  }, as: :select
  permit_params :name, :ancestry

  index do
    selectable_column
    column :name
    column :ancestry do |category|
      if category.ancestry.present?
        Category.find_by(category.ancestry).name
      else
        "N/A"
      end
    end
    column :created_at
    actions
  end

  form do |f|
    f.semantic_errors
    if f.object.new_record? || f.object.subcategory?
      inputs do
        input :name
        input :ancestry, as: :select, collection: Category.all.where(ancestry: nil).map { |c| [c.name.to_s, c.id] }
      end
    else
      f.inputs except: :ancestry
    end
    f.actions
  end
end
