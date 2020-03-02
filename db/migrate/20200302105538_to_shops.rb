class ToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops,:name, :string
    add_column :shops,:image, :text
    add_column :shops,:address, :string
    add_column :shops,:station, :string
    add_column :shops,:station_walk, :integer
    add_column :shops,:shop_holiday, :string
    add_column :shops,:shop_time, :string
  end
end
