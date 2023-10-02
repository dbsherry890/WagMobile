class RemoveColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :country
    remove_column :users, :city
    add_column :users, :address, :string
    add_column :users, :admin, :boolean, default: false
  end
end
