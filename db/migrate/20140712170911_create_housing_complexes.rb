class CreateHousingComplexes < ActiveRecord::Migration
  def change
    create_table :housing_complexes do |t|
      t.text :address
      t.boolean :on_bus_line
      t.text :exclusions

      t.timestamps
    end
  end
end
