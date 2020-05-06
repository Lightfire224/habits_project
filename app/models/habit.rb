class Habit < ApplicationRecord
    has_many :activity
    has_many :user_activities
    has_many :users, through: :user_activities
    has_many :records, through: :user_activities
end
