# Edited 4/13/2020 by Tze Hei Tam: Added test case for validity
# Edited 4/15/2020 by Emily Niehaus:  Fix/update validity test case
# Edited 4/15/2020 by Tze Hei Tam: Modified test for relationship
# Edited 4/23/2020 by Tze Hei Tam: Made changes for new fields in reservation
# Edited 4/23/2020 by Nick Harvey: Added test cases for attributes

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase

  def setup
    @customer = User.new email: "example@email.com", password: "12345678", password_confirmation: "12345678", f_name: "John", l_name: "Smith", phone_num: "1111111111" 
    @reservation = @customer.reservations.build name: @customer.f_name, email: @customer.email, phone_num: @customer.phone_num, party_size: 4, time: Time.parse("18:00"), date: Date.new(2021, 1, 1), special_requests: "none"
  end

  test "should be valid" do 
    assert @reservation.valid?
  end

  test "email is present" do
    @reservation.email = ""
    assert_not @reservation.valid?
  end

  test "phone_num is present" do
    @reservation.phone_num = ""
    assert_not @reservation.valid?
  end

  test "party_size is present" do
    @reservation.party_size = ""
    assert_not @reservation.valid?
  end

  test "time is present" do
    @reservation.time = ""
    assert_not @reservation.valid?
  end

  test "date is present" do
    @reservation.date = ""
    assert_not @reservation.valid?
  end

  test "name is present" do
    @reservation.name = ""
    assert_not @reservation.valid?
  end

end