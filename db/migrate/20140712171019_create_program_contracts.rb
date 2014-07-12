class CreateProgramContracts < ActiveRecord::Migration
  def change
    create_table :program_contracts do |t|
      t.belongs_to :program
      t.belongs_to :housing_complex

      t.timestamps
    end
  end
end
