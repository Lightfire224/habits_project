class Habit < ApplicationRecord
    has_many :activities
    has_many :records, through: :activities    
    
    has_many :user_activities
    has_many :users, through: :user_activities
end
