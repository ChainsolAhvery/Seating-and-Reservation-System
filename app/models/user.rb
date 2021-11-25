# Edited 4/13/2020 by Alli Hornyak: adding validation
# Edited 4/14/2020 by Alli Hornyak: editing phone_num validation
# Edited 4/14/2020 by Nick Harvey: removed username, fleshed out email
# Edited 4/21/2020 by Tze Hei Tam: Removed redundant validations covered by Devise
# Edited 4/24/2020 by Alli Hornyak: added required presence for name
# Edited 4/24/2020 by Nina Yao: Added validation for email

class User < ApplicationRecord
  has_many :reservations  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save { self.email = email.downcase }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, password_length: 8..128
  validates :phone_num, :f_name, :l_name, presence: true
  
  VALID_PHONE_REGEX = /\d{10}/
  VALID_EMAIL_REGEX = /\S+@\S+\.\S+/
  validates :phone_num, length: {minimum: 10, maximum: 10}, format: { with: VALID_PHONE_REGEX}
  validates :email, uniqueness: true, length: { maximum: 255 }, format: {with: VALID_EMAIL_REGEX}
end
