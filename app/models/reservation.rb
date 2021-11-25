# Edited 4/15/2020 by Tze Hei Tam: Added relationship to User
# Edited 4/22/2020 by Alli Hornyak: Added validations for required attributes
# Edited 4/22/2020 by Nick Harvey: Added validations for name, phone_num, email
# Edited 4/24/2020 by Tze Hei Tam: Added validation for phone number
# Edited 4/24/2020 by Nina Yao: Added validation for email

class Reservation < ApplicationRecord
    belongs_to :user
    # TODO maybe add datetime to not just order by date
    default_scope -> { order(:date, :time) } 
    validates :date, :time, :party_size, :name, :phone_num, :email, presence: true
    VALID_PHONE_REGEX = /\d{10}/
    validates :phone_num, length: {minimum: 10, maximum: 10}, format: { with: VALID_PHONE_REGEX}
    VALID_EMAIL_REGEX = /\S+@\S+\.\S+/
    validates :email, format: { with: VALID_EMAIL_REGEX}
end
