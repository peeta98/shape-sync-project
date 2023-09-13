require 'uri'
require 'net/http'

puts 'Deleting seeds...'
Exercise.destroy_all
Workout.destroy_all
WorkoutProgram.destroy_all
User.destroy_all
Achievement.destroy_all
puts 'Seeds deleted!'

#  ----- Seeding instances of User -----
puts 'Creating 1 user...'
pedro = User.create!(
  username: 'Peeta98',
  email: 'pedro@gmail.com',
  password: 'secret',
  gender: 'Male',
  height: 175,
  age: 27,
  weight: 82,
  goal: 'Get shredded'
)
puts 'User 1 created!'

# ----- Seeding instances of Workout Program -----
puts 'Creating 1 Workout Program...'
max_gainz = WorkoutProgram.create!(
  weekly_frequency: 3,
  user: pedro
)
puts 'Workout Program created!'

# ----- Seeding istances of Workout -----
puts 'Creating all the workouts...'
push_week = Workout.create!(
  categories: 'UpperBody',
  duration: 90,
  workout_program: max_gainz
)
pull_week = Workout.create!(
  categories: 'UpperBody',
  duration: 75,
  workout_program: max_gainz
)
legs_week = Workout.create!(
  categories: 'LowerBody',
  duration: 93,
  workout_program: max_gainz
)
puts 'All Workouts created!'

# ----- Seeding Exercises from the API -----
puts 'Creating the Exercises from the API...'
url = URI('https://exercisedb.p.rapidapi.com/exercises')

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request['X-RapidAPI-Key'] = 'a5ec1d093cmshf3922a4cee2183fp1a6fa3jsnd3c0f77f2433'
request['X-RapidAPI-Host'] = 'exercisedb.p.rapidapi.com'

response = http.request(request)
exercise_api = JSON.parse(response.read_body) # Returns an array of hashes
exercise_api.each do |exercise|
  Exercise.create!(
    name: exercise['name'].capitalize!,
    sets: 0,
    reps: 0,
    weight: 0,
    rest: 0,
    rpe: 0,
    gif: exercise['gifUrl'],
    bodyPart: exercise['bodyPart'],
    target: exercise['target'],
    equipment: exercise['equipment']
  )
end
puts 'All exercises created!'

# ----- Seeding instances of Achievement -----
puts 'Creating 8 achievements...'
achievement = Achievement.create!(
  name: 'Newbie Gains',
  message: 'Congratulations on your first workout program!',
  description: 'Create your first workout program',
  goal: 1,
  trophy: 'bronze',
  category: 'General'
)

achievement = Achievement.create!(
  name: 'One is better than nothing',
  message: 'Congratulations on adding exercises to your workouts!',
  description: 'Add 1 exercise in any of your workouts',
  goal: 1,
  trophy: 'bronze',
  category: 'General'
)

achievement = Achievement.create!(
  name: 'Wannabe Powerlifter',
  message: 'Congratulations on doing an exercise with half-decent weight!',
  description: 'Do an exercise with a weight equal or higher than 40kg',
  goal: 1,
  trophy: 'silver',
  category: 'General'
)

achievement = Achievement.create!(
  name: 'Volume is key',
  message: 'Your workout sets surpasses the number 9, INSANE (for a beginner)!',
  description: 'Have a total number of sets higher than 9, in any current workout',
  goal: 1,
  trophy: 'silver',
  category: 'General'
)

achievement = Achievement.create!(
  name: 'Biceps Abuser',
  message: 'Congratulations, your workout has more than 2 biceps exercises!',
  description: 'Do more than 2 biceps exercises in a single workout',
  goal: 1,
  trophy: 'gold',
  category: 'Biceps'
)

achievement = Achievement.create!(
  name: 'Never Skip Leg Day',
  message: 'Congratulations, you have atleast 8 sets of leg exercises, no more spaghetti leg jokes!',
  description: 'Do 8 or more sets of leg exercises in a single workout',
  goal: 1,
  trophy: 'gold',
  category: 'Legs'
)

achievement = Achievement.create!(
  name: 'Lightweight baby',
  message: 'Congratulations, you did an exercise with atleast 200kg, Arnold would be proud!',
  description: 'Do an exercise with a total weight of atleast 200kg',
  goal: 1,
  trophy: 'platinum',
  category: 'General'
)

achievement = Achievement.create!(
  name: 'Who is gonna carry the boats?',
  message: 'Congratulations, you did more than 200 reps in a single workout!',
  description: 'Do a total of more than 200 total reps in a single workout',
  goal: 1,
  trophy: 'platinum',
  category: 'General'
)

# achievement11 = Achievement.create!(
#  name: 'Abs Amateur',
#  message: 'Congratulations, you finished 5 abs exercises!',
#  description: 'Do a total of 5 abs exercises',
#  goal: 5,
#  trophy: 'bronze',
#  category: 'Abs'
# )

#achievement12 = Achievement.create!(
  #name: 'Abs Apprentice',
 # message: 'Congratulations, you finished 25 abs exercises!',
 # description: 'Do a total of 25 abs exercises',
 # goal: 25,
 # trophy: 'silver',
 # category: 'Abs'
#)

# achievement13 = Achievement.create!(
#   name: 'Abs Pro',
#   message: 'Congratulations, you finished 80 abs exercises!',
#   description: 'Do a total of 80 abs exercises',
#   goal: 80,
#   trophy: 'gold',
#   category: 'Abs'
# )

# achievement14 = Achievement.create!(
#   name: 'Abs Grandmaster',
#   message: 'Congratulations, you finished 200 abs exercises!',
#   description: 'Do a total of 200 abs exercises',
#   goal: 200,
#   trophy: 'platinum',
#   category: 'Abs'
# )

# achievement15 = Achievement.create!(
#   name: 'Triceps Novice',
#   message: 'Congratulations, you finished 5 triceps exercises!',
#   description: 'Do a total of 5 triceps exercises',
#   goal: 5,
#   trophy: 'bronze',
#   category: 'Triceps'
# )

# achievement16 = Achievement.create!(
#   name: 'Tricep Trooper',
#   message: 'Congratulations, you finished 25 triceps exercises!',
#   description: 'Do a total of 25 triceps exercises',
#   goal: 25,
#   trophy: 'silver',
#   category: 'Triceps'
# )

# achievement17 = Achievement.create!(
#   name: 'Triceps Tank',
#   message: 'Congratulations, you finished 80 triceps exercises!',
#   description: 'Do a total of 80 triceps exercises',
#   goal: 80,
#   trophy: 'gold',
#   category: 'Triceps'
# )

# achievement18 = Achievement.create!(
#   name: 'Triceps Grandmaster',
#   message: 'Congratulations, you finished 200 triceps exercises!',
#   description: 'Do a total of 200 triceps exercises',
#   goal: 200,
#   trophy: 'platinum',
#   category: 'Triceps'
# )

# achievement19 = Achievement.create!(
#   name: 'Back Beginner',
#   message: 'Congratulations, you finished 5 back exercises!',
#   description: 'Do a total of 5 back exercises',
#   goal: 5,
#   trophy: 'bronze',
#   category: 'Back'
# )

# achievement20 = Achievement.create!(
#   name: 'Back Builder',
#   message: 'Congratulations, you finished 25 back exercises!',
#   description: 'Do a total of 25 back exercises',
#   goal: 25,
#   trophy: 'silver',
#   category: 'Back'
# )

# achievement21 = Achievement.create!(
#   name: 'Broadback Brother',
#   message: 'Congratulations, you finished 80 back exercises!',
#   description: 'Do a total of 80 back exercises',
#   goal: 80,
#   trophy: 'gold',
#   category: 'Back'
# )

# achievement22 = Achievement.create!(
#   name: 'Back Grandmaster',
#   message: 'Congratulations, you finished 200 back exercises!',
#   description: 'Do a total of 200 back exercises',
#   goal: 200,
#   trophy: 'platinum',
#   category: 'Back'
# )

#achievement23 = Achievement.create!(
#  name: 'Leg Day Survivor',
#  message: 'Congratulations, you finished 5 leg exercises!',
#  description: 'Do a total of 5 leg exercises',
#  goal: 5,
#  trophy: 'bronze',
#  category: 'Legs'
# )

#achievement24 = Achievement.create!(
#  name: 'Leg Connoisseur',
#  message: 'Congratulations, you finished 25 leg exercises!',
#  description: 'Do a total of 25 leg exercises',
#  goal: 25,
#  trophy: 'silver',
#  category: 'Legs'
#)

#achievement25 = Achievement.create!(
#  name: 'Leg Luminary',
#  message: 'Congratulations, you finished 80 leg exercises!',
#  description: 'Do a total of 80 leg exercises',
#  goal: 80,
#  trophy: 'gold',
#  category: 'Legs'
# )

# achievement26 = Achievement.create!(
#   name: 'Leg Grandmaster',
#   message: 'Congratulations, you finished 200 leg exercises!',
#   description: 'Do a total of 200 leg exercises',
#   goal: 200,
#   trophy: 'platinum',
#   category: 'Legs'
# )

# achievement27 = Achievement.create!(
#   name: 'Chest Cub',
#   message: 'Congratulations, you finished 5 chest exercises!',
#   description: 'Do a total of 5 chest exercises',
#   goal: 5,
#   trophy: 'bronze',
#   category: 'Chest'
# )

# achievement28 = Achievement.create!(
#   name: 'Chest Challenger',
#   message: 'Congratulations, you finished 25 chest exercises!',
#   description: 'Do a total of 25 chest exercises',
#   goal: 25,
#   trophy: 'silver',
#   category: 'Chest'
# )

# achievement29 = Achievement.create!(
#   name: 'Pecs Professional',
#   message: 'Congratulations, you finished 80 chest exercises!',
#   description: 'Do a total of 80 chest exercises',
#   goal: 80,
#   trophy: 'gold',
#   category: 'Chest'
# )

# achievement30 = Achievement.create!(
#   name: 'Chest Grandmaster',
#   message: 'Congratulations, you finished 200 chest exercises!',
#   description: 'Do a total of 200 chest exercises',
#   goal: 200,
#   trophy: 'platinum',
#   category: 'Chest'
# )

# achievement31 = Achievement.create!(
#   name: 'Shoulder Scout',
#   message: 'Congratulations, you finished 5 shoulder exercises!',
#   description: 'Do a total of 5 shoulder exercises',
#   goal: 5,
#   trophy: 'bronze',
#   category: 'Shoulders'
# )

# achievement32 = Achievement.create!(
#   name: 'Shoulder Impressionist',
#   message: 'Congratulations, you finished 25 shoulder exercises!',
#   description: 'Do a total of 25 shoulder exercises',
#   goal: 25,
#   trophy: 'silver',
#   category: 'Shoulders'
# )

# achievement33 = Achievement.create!(
#   name: 'Shoulder Samurai',
#   message: 'Congratulations, you finished 80 shoulder exercises!',
#   description: 'Do a total of 80 shoulder exercises',
#   goal: 80,
#   trophy: 'gold',
#   category: 'Shoulders'
# )

# achievement34 = Achievement.create!(
#   name: 'Shoulder Grandmaster',
#   message: 'Congratulations, you finished 200 shoulder exercises!',
#   description: 'Do a total of 200 shoulder exercises',
#   goal: 200,
#   trophy: 'platinum',
#   category: 'Shoulders'
# )

puts 'Finished creating achievements!'
