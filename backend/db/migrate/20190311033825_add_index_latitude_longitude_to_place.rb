class AddIndexLatitudeLongitudeToPlace < ActiveRecord::Migration[5.2]
  def change
    add_index :places, %i[latitude longitude]
  end
end
