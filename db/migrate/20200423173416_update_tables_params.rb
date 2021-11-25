class UpdateTablesParams < ActiveRecord::Migration[5.2]
  def change
    rename_column :tables, :type, :table_type
  end
end
