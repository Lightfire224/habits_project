class Activity < ApplicationRecord
    belongs_to :habit
    has_many :records
end
