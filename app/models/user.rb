class User < ApplicationRecord
    has_many :user_activities
    has_many :activities, through: :user_activities
    has_many :records, through: :user_activities
end
