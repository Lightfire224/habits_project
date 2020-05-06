# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#hi steve

User.destroy_all
Habit.destroy_all
Activity.destroy_all
UserActivity.destroy_all

User.create(name: "Bob" , age: 18 , occupation: "Bob_job" )
User.create(name: "Bob_2" , age: 18 , occupation: "Bob_job_2" )
User.create(name: "Bob_3" , age: 18 , occupation: "Bob_job_3" )
User.create(name: "Bob_4" , age: 18 , occupation: "Bob_job_4" )
User.create(name: "Bob_5" , age: 18 , occupation: "Bob_job_5" )

Habit.create(name: "Cardio", description: "Increase ur CO2 intake")
Habit.create(name: "Weightlifting", description: "Get some gainzz")
Habit.create(name: "Bird-watching", description: "Get in touch with your natural side" )
Habit.create(name: "Reading", description: "Explore the world as a broke person")
Habit.create(name: "Working", description: "Do what's necessary")

Activity.create(name: "Running" , description: "feet fast", habit_id: Habit.all.sample.id)
Activity.create(name: "Eating" , description: "oreos", habit_id: Habit.all.sample.id)
Activity.create(name: "Jumping" , description: "reach the stars" , habit_id: Habit.all.sample.id)
Activity.create(name: "Sprinting" , description: "Usain Bolt", habit_id: Habit.all.sample.id)
Activity.create(name: "Flying" , description: "pigiotto", habit_id: Habit.all.sample.id)

UserActivity.create(user_id: User.all.sample.id, habit_id: Habit.all.sample.id)
UserActivity.create(user_id: User.all.sample.id, habit_id: Habit.all.sample.id)
UserActivity.create(user_id: User.all.sample.id, habit_id: Habit.all.sample.id)



#order matters when seeding data, bc data needs to exist for id's 
#in order for it to be there. cool.
#need habit_ids to exist for habit_id to be in activity model
