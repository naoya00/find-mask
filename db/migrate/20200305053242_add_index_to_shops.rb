class AddIndexToShops < ActiveRecord::Migration[5.2]
  def change
    add_index :shops, :station
  end
end
