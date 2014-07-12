class AddHousingComplexToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :housing_complex_id, :reference
  end
end
