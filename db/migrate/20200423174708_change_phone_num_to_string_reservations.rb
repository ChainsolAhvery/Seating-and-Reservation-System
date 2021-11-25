# Created 4/23/2020 by Tze Hei Tam

class ChangePhoneNumToStringReservations < ActiveRecord::Migration[5.2]
  def up
    change_column :reservations, :phone_num, :string
  end

  def down
    change_column :reservations, :phone_num, :integer
  end
end
