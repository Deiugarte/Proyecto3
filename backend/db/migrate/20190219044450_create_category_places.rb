class CreateCategoryPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :category_places do |t|
      t.belongs_to :category, index: true
      t.belongs_to :place, index: true

      t.timestamps
    end
  end
end
