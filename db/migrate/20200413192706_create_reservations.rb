class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|

      t.integer :party_size
      t.time :time
      t.date :date
      t.string :special_requests

      t.timestamps
    end
  end
end
