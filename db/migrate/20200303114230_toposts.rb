class Toposts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts,:shop_id, :integer, foreign_key: true
  end
end
