# Edited 4/13/2020 by Emily Niehaus:  create seed admin user
# Edited 4/20/2020 by Nina Yao: created example resos
# Edited 4/22/2020 by Nick Harvey: Added name, phone_num, email to reservations
# Edited 4/23/2020 by Tze Hei Tam: changed phone_num to string
# Edited 4/23/2020 by Tze Hei Tam: added data to test queue
# Edited 4/24/2020 by Nick Harvey: Refined data, set future reservations for a year

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create admin user account ----------------------------------
admin = User.new(
    :email      => 'admin@admin.test',
    :password   => '12345678',
    :password_confirmation => '12345678',
    :admin      => true,
    :f_name     => 'Iman',
    :l_name     => 'Admin',
    :phone_num  => '1234567890'
)
admin.save!

# Create customer user accounts ----------------------------------
customer1 = User.create(
    :email      => 'customer@1.com',
    :password   => '12345678',
    :password_confirmation => '12345678',
    :admin      => false,
    :f_name     => 'Nina',
    :l_name     => 'Yao',
    :phone_num  => '1234567890'
)
customer1.save!

customer2 = User.create(
    :email      => 'customer2@2.com',
    :password   => '12345678',
    :password_confirmation => '12345678',
    :admin      => false,
    :f_name     => 'Ally',
    :l_name     => 'Hornyak',
    :phone_num  => '1234567890'
)
customer2.save!

customer3 = User.create(
    :email      => 'customer3@3.com',
    :password   => '12345678',
    :password_confirmation => '12345678',
    :admin      => false,
    :f_name     => 'Tze Hei',
    :l_name     => 'Tam',
    :phone_num  => '1234567890'
)
customer3.save!

customer4 = User.create(
    :email      => 'customer4@4.com',
    :password   => '12345678',
    :password_confirmation => '12345678',
    :admin      => false,
    :f_name     => 'Emily',
    :l_name     => 'Niehaus',
    :phone_num  => '1234567890'
)
customer4.save!

customer5 = User.create(
    :email      => 'customer5@5.com',
    :password   => '12345678',
    :password_confirmation => '12345678',
    :admin      => false,
    :f_name     => 'Nick',
    :l_name     => 'Harvey',
    :phone_num  => '1234567890'
)
customer5.save!


# Generate reservations  ----------------------------------
customer1.reservations.create(
    :party_size => 4,
    :time => '3:00',
    :date => '2021-01-01',
    :special_requests => 'None',
    :name => 'Nina Yao',
    :phone_num  => '1234567890',
    :email      => 'customer@1.com'
)

customer2.reservations.create(
    :party_size => 3,
    :time => '5:00',
    :date => '2021-01-01',
    :special_requests => 'Wheelchair Accessible',
    :name => 'Ally Hornyak',
    :phone_num => '1234567890',
    :email      => 'customer@2.com'
)

customer3.reservations.create(
    :party_size => 1,
    :time => Time.parse("9:00"),
    :date => Date.parse("2021-05-02"),
    :special_requests => 'None',
    :name => 'Tze Hei Tam',
    :phone_num => '1234567890',
    :email      => 'customer@3.com'
)

customer3.reservations.create(
    :party_size => 10,
    :time => Time.parse("2:00"),
    :date => Date.parse("2021-05-02"),
    :special_requests => 'None',
    :name => 'Tze Hei Tam',
    :phone_num => '1234567890',
    :email      => 'customer@3.com'
)

customer4.reservations.create(
    :party_size => 7,
    :time => '12:00',
    :date => Date.parse("2021-05-02"),
    :special_requests => 'None',
    :name => 'Emily Niehaus',
    :phone_num => '1234567890',
    :email      => 'customer@4.com'
)

customer5.reservations.create(
    :party_size => 3,
    :time => '22:00',
    :date => Date.parse("2021-05-02"),
    :special_requests => 'Wheelchair Accessible',
    :name => 'Nick Harvey',
    :phone_num => '1234567890',
    :email      => 'customer@5.com'
)

customer2.reservations.create(
    :party_size => 3,
    :time => '6:00',
    :date => '2021-01-01',
    :special_requests => 'None',
    :name => 'Ally Hornyak',
    :phone_num => '1234567890',
    :email      => 'customer@2.com'
)

# Data for today - test queue

customer1.reservations.create(
    :party_size => 4,
    :time => '3:00',
    :date => Date.today,
    :special_requests => 'None',
    :name => 'Nina Today',
    :phone_num  => '1234567890',
    :email      => 'customer@1.com'
)

customer2.reservations.create(
    :party_size => 3,
    :time => '5:00',
    :date => Date.today,
    :special_requests => 'Wheelchair Accessible',
    :name => 'Alli Today',
    :phone_num => '1234567890',
    :email      => 'customer@2.com'
)

customer3.reservations.create(
    :party_size => 1,
    :time => Time.parse("9:00"),
    :date => Date.today,
    :special_requests => 'None',
    :name => 'Tze Hei Today',
    :phone_num => '1234567890',
    :email      => 'customer@3.com'
)

customer3.reservations.create(
    :party_size => 10,
    :time => Time.parse("2:00"),
    :date => Date.today,
    :special_requests => 'None',
    :name => 'Tzeday',
    :phone_num => '1234567890',
    :email      => 'customer@3.com'
)

customer4.reservations.create(
    :party_size => 7,
    :time => '12:00',
    :date => Date.today,
    :special_requests => 'None',
    :name => 'Emily Today',
    :phone_num => '1234567890',
    :email      => 'customer@4.com'
)

customer5.reservations.create(
    :party_size => 3,
    :time => '22:00',
    :date => Date.today,
    :special_requests => 'Wheelchair Accessible',
    :name => 'Nick Today',
    :phone_num => '1234567890',
    :email      => 'customer@5.com'
)

customer2.reservations.create(
    :party_size => 3,
    :time => '6:00',
    :date => Date.today,
    :special_requests => 'Allergic to gluten',
    :name => 'Alli Today',
    :phone_num => '1234567890',
    :email      => 'customer@2.com'
)


# Create Tables  ----------------------------------
table1 = Table.create(
    :table_type => 'Booth',
    :num_seats  => 4,
    :is_available => false,
    :accessible => true
)
table1.save!

table2 = Table.create(
    :table_type => 'Booth',
    :num_seats  => 6,
    :is_available => true,
    :accessible => true
)
table2.save!

table3 = Table.create(
    :table_type => 'Table',
    :num_seats  => 4,
    :is_available => true,
    :accessible => false

)
table3.save!

table4 = Table.create(
    :table_type => 'Hightop',
    :num_seats  => 3,
    :is_available => true,
    :accessible => false
)
table4.save!
