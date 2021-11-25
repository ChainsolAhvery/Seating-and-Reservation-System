# Project 6
### Reservation Management System


### General Info
A web application that lets customers make reservations at a restaurant and lets restaurant owners view/change their reservations as well as assign tables.

Original contributions are preserved as my former teammates deserve credit for their hard work, of course. If you see this, I hope you're doing well! Talk about a COVID artifact, am I right?


### Features
* Customers will be able to:
    * Create an account and use that account to create reservations
    * Edit and delete their reservations
* Administrators will be able to:
    * Login to their administrator account
    * Edit and delete all reservations
    * Create new reservations
    * See a queue of all reservations for today
    * See a list of all reservations made
    * Assign tables


### Technologies
* Ruby on Rails
* Devise
* Bootstrap
* React


### How to run
Note: Node.js is required to run this application.

To clone and run this application, a machine with Git installed will be necessary.
From the command line, run the following commands:


```
# Clone this repository
$ git clone https://github.com/cse3901-osu-2020sp/Project-6-THE-Internet-Explorers.git

# Go into the repository
$ cd Project-6-THE-internet-explorers

# Install gems
$ bundle install

# Initialize database
$ rake db:drop
$ rake db:create
$ rake db:migrate
$ rake db:seed

# Start rails server
$ rails server
```


### Go to website
Visit localhost:3000


### Default Login Info (From seeds.rb)
Admin
* Email: admin@admin.test
* Password: 12345678
Customer
* Email: customer@1.com
* Password: 12345678


### Testing
* test/testing_plan.pdf contains our integration testing log 
```
To run model tests
$ rake test
```


### Roles
* Overall Project Manager: Tze Hei Tam
* Coding Manager: Nina Yao
* Testing Manager: Alli Hornyak
* Documentation: Nick Harvey


### Contributions
Please list who did what for each part of the project.
Also list if people worked together (pair programmed) on a particular section.


* Pair Programming:
* The following tasks were completed by ALL team members during a group zoom meeting.  Emily Niehaus was the “driver” (ie: commits were made from her account) and shared her screen as the rest of the team directed.
   * Initialize Rails
   * Install Devise
   * Generate models for Reservations, Tables, and Users


* Tze Hei Tam
   * Contributed to Reservations controller
   * Implemented login functionality using Devise
   * Edited reservation creation and edit pages
   * Wrote Table controller
   * Edited model files for User and Reservation
   * Contributed to model tests 


* Nina Yao
   * Contributed to Reservations controller methods
   * Wrote Edit Reservation page (edit.html.erb)
   * Wrote Customer reservation index page (_customer_index.html.erb)
   * Contributed to Admin reservation index page (_admin_index.html.erb)
   * Wrote validations for email in reservations model


* Alli Hornyak
   * Wrote New reservation page (_customer_new.html.erb,  _admin_index.html.erb and new.html.erb)
   * Contributed to Reservations controller methods
   * Created ER diagram
   * System tests (Test Plan text file)
   * Contributed to Admin reservation index page (_admin_index.html.erb)
   * Wrote validations in reservation and user model


* Nick Harvey
   * Contributed to reservation form pages
   * Added information verification and error catching to login page
   * Contributed to User and Table model tests
   * Wrote CSS and HTML styling
   * Home page mockup
   * Contributed to controller parameters


* Emily Niehaus
   * Create seeds for the admin user and table objects
   * Install React + create status component (status.js)
   * Create Header partial (application.html.erb)
   * Add conditional rendering based on user type (reservations/index.html.erb)
   * Create layout (rows, columns, and tables) for Admin reservation index page (reservations/_admin_index.html.erb)
   * Create seating layout pop-up and button (reservations/_admin_index.html.erb)
   * Contributed to Reservations controller methods
   
