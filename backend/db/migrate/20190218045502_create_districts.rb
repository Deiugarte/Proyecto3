class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.string :name
      t.text :description
      t.belongs_to :canton, index: true

      t.timestamps
    end
  end
end
