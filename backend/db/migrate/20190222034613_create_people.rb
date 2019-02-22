class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :phone
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
