class Table < ApplicationRecord
    validates :table_type, :num_seats, presence: true
end
