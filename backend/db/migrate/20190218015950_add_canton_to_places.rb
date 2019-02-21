class AddCantonToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :canton, foreign_key: true
  end
end
