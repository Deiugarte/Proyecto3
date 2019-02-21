class AddDistrictToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :district, foreign_key: true
  end
end
