class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :type
      t.integer :num_seats
      t.boolean :is_available

      t.timestamps
    end
  end
end
