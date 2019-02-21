class AddProvinceToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :province, foreign_key: true
  end
end
