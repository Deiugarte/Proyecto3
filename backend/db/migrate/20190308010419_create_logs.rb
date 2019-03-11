class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :description
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.belongs_to :user, index: true
      t.belongs_to :place, index: true

      t.timestamps
    end
  end
end
