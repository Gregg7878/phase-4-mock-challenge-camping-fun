class Activity < ApplicationRecord
    has_many :signups
    has_many :campers, through: :signups
    has_many :campers, through: :camper_id
end
