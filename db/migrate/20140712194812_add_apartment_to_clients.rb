class AddApartmentToClients < ActiveRecord::Migration
  def change
    add_reference :clients, :apartment
  end
end
