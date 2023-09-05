require 'open-uri'

puts "Deleting seeds..."
User.destroy_all
Excercise.destroy_all
Achievement.destroy_all
Workout.destroy_all
WorkoutProgram.destroy_all
puts "Seeds deleted!"

#  ----- Seeding instances of User -----
puts "Creating 5 users..."
pedro = User.create!(username: "PedroPullup", email: "pedro@gmail.com", password: "secret", gender: "male", height: 175, weight: 82)
puts "User 1 created!"
# klevion = User.create!(username: "KettlebellKlevion", email: "klevion@gmail.com", password: "secret", gender: "male", height: 181, weight: 87, goal: "strength")
# puts "User 2 created!"
# ayub = User.create!(username: "AbsMasterAyub", email: "ayub@gmail.com", password: "secret", gender: "male", height: 190, weight: 80, goal: "weight loss")
# puts "User 3 created!"
# gonçalo = User.create!(username: "GonçaloGains", email: "gonçalo@gmail.com", password: "secret", gender: "male", height: 180, weight: 84, goal: "strength")
# puts "User 4 created!"
# kevin = User.create!(username: "KarateKevin", email: "kevin@gmail.com", password: "secret", gender: "male", height: 186, weight: 86, goal: "fitness")
# puts "User 5 created!"

puts "Creating exercises..."

exercise1 = Exercise.create!(
  name: "Skullcrushers",
  category: "Triceps",
  sets: 3,
  reps: 15,
  weight: 0,
  rest: 60,
  rpe: 7
)
puts "Exercise 1 created!"

exercise2 = Exercise.create!(
  name: "Hammer Curls",
  category: "Biceps",
  sets: 4,
  reps: 8,
  weight: 25,
  rest: 90,
  rpe: 8
)
puts "Exercise 2 created!"

exercise3 = Exercise.create!(
  name: "Seated Rows",
  category: "Back",
  sets: 3,
  reps: 5,
  weight: 225,
  rest: 120,
  rpe: 9
)
puts "Exercise 3 created!"

exercise4 = Exercise.create!(
  name: "Bench Press",
  category: "Chest",
  sets: 3,
  reps: 8,
  weight: 155,
  rest: 90,
  rpe: 7
)
puts "Exercise 4 created!"

exercise5 = Exercise.create!(
  name: "Leg Press",
  category: "Legs",
  sets: 4,
  reps: 10,
  weight: 0,
  rest: 60,
  rpe: 7
)
puts "Exercise 5 created!"
puts "Finished creating exercises!"

puts "Creating achievements..."

achievement1 = Achievement.create!(
  name: "Newbie Gains",
  badge_url: "https://img.freepik.com/free-vector/award-medal-with-red-ribbon_1284-42828.jpg?w=996&t=st=1693901682~exp=1693902282~hmac=ecd8b21a76bf86e7be6ee6ef2373a5918a50594185da93ddf3c9b9b922026366",
  description: "Congratulations on finishing your first workout!"
)

puts "Achievement 1 created!"

achievement2 = Achievement.create!(
  name: "Cardio Master",
  badge_url: "https://img.freepik.com/free-vector/award-ribbon_24908-54794.jpg?w=1380&t=st=1693901702~exp=1693902302~hmac=d558ef1018194f08eba0da64fb60838071e88311799969cd09d1bf8c018ffc6e",
  description: "You have completed 100 hours of cardio, wow!"
)

puts "Achievement 2 created!"

achievement3 = Achievement.create!(
  name: "Bicep Boss",
  badge_url: "https://img.freepik.com/free-vector/award-ribbon_24908-54753.jpg?w=1380&t=st=1693901721~exp=1693902321~hmac=532174ad81cb3bfb195a5fe0e559dc81fe8e3343b8281edf8c9186ce8240019f",
  description: "Congratulations, you finished 50 bicep exercise sets!"
)

puts "Achievement 3 created!"
puts "Finished creating achievements!"
puts "Creating workouts..."

workout1 = Workout.create!(
  name: "Chest Day",
  date: Date.today,
  duration: 45
)

puts "Workout 1 created!"

workout2 = Workout.create!(
  name: "Leg Day",
  date: Date.today,
  duration: 60
)

puts "Workout 2 created!"
puts "Finished creating workouts!"

puts "Creating workout programs..."

workout_program = WorkoutProgram.create!(
  workout_split: "PPL",
  total_duration: 45,
  weekly_frequency: 3,
  week: [1, 2, 3, 4],
  start_date: Date.today,
  end_date: Date.today + 30.days
)

puts "Workout program 1 created!"
puts "Finished creating workout programs!"
