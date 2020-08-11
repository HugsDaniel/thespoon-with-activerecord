class AddAddressToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :addresss, :string
  end
end
