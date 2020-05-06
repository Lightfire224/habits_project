class User < ApplicationRecord
    has_many :user_activities
    has_many :habits, through: :user_activities

    # def user_habits
    #     self.habits.map do |habit|
    #         habit
    #     end
    #     habit
    # end

    # def user_activities
    #     user_habits.map do |activity|
    #         activity
    #     end
    #     activity
    # end    
    
end
