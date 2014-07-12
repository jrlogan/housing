class ChangeIncomeFormat < ActiveRecord::Migration
  def change
  	change_column :clients, :income_verification, :string
  end
end
