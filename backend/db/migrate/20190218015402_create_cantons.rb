class CreateCantons < ActiveRecord::Migration[5.2]
  def change
    create_table :cantons do |t|
      t.string :name
      t.text :description
      t.belongs_to :province, index: true

      t.timestamps
    end
  end
end
