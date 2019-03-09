class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.decimal :price, precision: 5, scale: 2
      t.decimal :quality, precision: 5, scale: 2
      t.decimal :service, precision: 5, scale: 2
      t.decimal :average_score, precision: 5, scale: 2
      t.belongs_to :place, index: true
      t.timestamps
    end
  end
end
