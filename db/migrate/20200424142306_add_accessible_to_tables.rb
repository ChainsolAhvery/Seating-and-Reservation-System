class AddAccessibleToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :tables, :accessible, :boolean
  end
end
