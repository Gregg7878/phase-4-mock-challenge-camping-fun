class Signup < ApplicationRecord
    belongs_to :Camper
    belongs_to :Activity

    validates :time, numericality:{greater_than_or_equal_to:0, less_than_or_equal_to: 23}
end
