# Edited 4/13/2020 by Tze Hei Tam: Added test case for validity
# Edited 4/14/2020 by Alli Hornyak: Edited test case to match new validations
# Edited 4/14/2020 by Nick Harvey: Added tests for email, phone_num, password attributes
# Edited 4/23/2020 by Nick Harvey: Added additional password and name tests

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @customer = User.new email: "example@email.com", password: "12345678", password_confirmation: "12345678", f_name: "John", l_name: "Smith", phone_num: "1111111111" 
  end

  test "should be valid" do
    assert @customer.valid?
  end

  test "email is present" do
    @customer.email = ""
    assert_not @customer.valid?
  end

  test "phone_num is present" do
    @customer.phone_num = ""
    assert_not @customer.valid?
  end

  test "password is present" do
    @customer.password = ""
    assert_not @customer.valid?
  end

  test "password is long enough" do
    @customer.password = "1" * 7
    assert_not @customer.valid?
  end

  test "password and password_confirmation match" do
    @customer.password = "1" * 8
    @customer.password_confirmation = "1" * 8
    assert @customer.password = @customer.password_confirmation
  end

  test "email isn't too long" do
    @customer.email = "a" * 255 + "@osu.edu"
    assert_not @customer.valid?
  end

  test "email is unique" do
    dupe_customer = @customer.dup
    @customer.save
    assert_not dupe_customer.valid?
  end

end