class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :rent
      t.integer :floor
      t.integer :max_capacity
      t.boolean :pets_allowed
      t.string :wheelchair_accessible
      t.boolean :smoking
      t.text :information

      t.timestamps
    end
  end
end
