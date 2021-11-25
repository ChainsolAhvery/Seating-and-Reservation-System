class AddNamePhoneToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :name, :string
    add_column :reservations, :phone_num, :integer
  end
end
