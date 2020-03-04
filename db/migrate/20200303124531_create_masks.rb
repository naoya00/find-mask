class CreateMasks < ActiveRecord::Migration[5.2]
  def change
    create_table :masks do |t|
      t.string :name
      t.text :image
      t.integer :stock
      t.references :shop, foreign_key: true
      t.timestamps
    end
  end
end
