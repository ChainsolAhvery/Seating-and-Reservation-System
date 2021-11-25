# Edited 4/13/2020 by Tze Hei Tam: Added test case for validity
# Edited 4/23/2020 by Nick Harvey: Attribute test
# Edited 4/24/2020 by Nick Harvey: Additional tests

require 'test_helper'

class TableTest < ActiveSupport::TestCase
  
  def setup
    @table = Table.new table_type: "Table", num_seats: 4, is_available: true
  end

  test "should be valid" do 
    assert @table.valid?
  end

  test "table_type is present" do
    @table.table_type = ""
    assert_not @table.valid?
  end

  test "num_seats is present" do
    @table.num_seats = ""
    assert_not @table.valid?
  end

  test "is_available is present" do
    @table.is_available = true
    assert @table.valid?
  end

  test "accessible is present" do
    @table.accessible = true
    assert @table.valid?
  end

end