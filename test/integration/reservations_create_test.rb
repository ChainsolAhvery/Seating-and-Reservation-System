# Created 4/24/2020 by Tze Hei Tam

require 'test_helper'

class ReservationsCreateTest < ActionDispatch::IntegrationTest
  
  test "invalid reservation information" do
    get new_reservation_path
    assert_no_difference 'Reservation.count' do
      post reservations_path, params: {reservation: { name:  "",
                                                      email: "",
                                                      phone_num: "",
                                                      party_size:  "",
                                                      date: "",
                                                      time: "",
                                                      special_requests: "" }}
    end
  end
  
end
