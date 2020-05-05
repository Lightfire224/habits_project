class Activity < ApplicationRecord
    has_many :habits
    has_many :user_activties
    has_many :users, through: :user_activties
    has_many :records, through: :user_activties
end
