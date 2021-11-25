# Created 4/23/2020 by Tze Hei Tam

class ChangePhoneNumToString < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :phone_num, :string
  end

  def down
    change_column :users, :phone_num, :integer
  end
end
