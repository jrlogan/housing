class AddHousingComplexToApartments < ActiveRecord::Migration
  def change
    add_reference :apartments, :housing_complex
  end
end
