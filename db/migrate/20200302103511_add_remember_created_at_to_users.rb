class AddRememberCreatedAtToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :remember_created_at, :datetime
  end
end
