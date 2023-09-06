puts 'Deleting seeds...'
User.destroy_all
Exercise.destroy_all
Achievement.destroy_all
Workout.destroy_all
WorkoutProgram.destroy_all
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
  workout_split: 'PPL',
  weekly_frequency: 3,
  start_date: Date.today,
  end_date: Date.today + 30.days,
  user: pedro
)
puts 'Workout Program created!'

# ----- Seeding istances of Workout -----
puts 'Creating all the workouts...'
push_week1 = Workout.create!(
  name: 'Push Day',
  date: Date.today,
  duration: 90,
  week: 1,
  workout_program: max_gainz
)
pull_week1 = Workout.create!(
  name: 'Pull day',
  date: Date.today + 1,
  duration: 75,
  week: 1,
  workout_program: max_gainz
)
legs_week1 = Workout.create!(
  name: 'Leg day',
  date: Date.today + 2,
  duration: 93,
  week: 1,
  workout_program: max_gainz
)
puts 'Workouts for week 1 created!'

push_week2 = Workout.create!(
  name: 'Push Day',
  date: Date.today + 5,
  duration: 90,
  week: 2,
  workout_program: max_gainz
)
pull_week2 = Workout.create!(
  name: 'Pull day',
  date: Date.today + 6,
  duration: 75,
  week: 2,
  workout_program: max_gainz
)
legs_week2 = Workout.create!(
  name: 'Leg day',
  date: Date.today + 7,
  duration: 93,
  week: 2,
  workout_program: max_gainz
)
puts 'Workouts for week 2 created!'

push_week3 = Workout.create!(
  name: 'Push Day',
  date: Date.today + 12,
  duration: 90,
  week: 3,
  workout_program: max_gainz
)
pull_week3 = Workout.create!(
  name: 'Pull day',
  date: Date.today + 13,
  duration: 75,
  week: 3,
  workout_program: max_gainz
)
legs_week3 = Workout.create!(
  name: 'Leg day',
  date: Date.today + 14,
  duration: 93,
  week: 3,
  workout_program: max_gainz
)
puts 'Workouts for week 3 created!'

push_week4 = Workout.create!(
  name: 'Push Day',
  date: Date.today + 19,
  duration: 90,
  week: 4,
  workout_program: max_gainz
)
pull_week4 = Workout.create!(
  name: 'Pull day',
  date: Date.today + 20,
  duration: 75,
  week: 4,
  workout_program: max_gainz
)
legs_week4 = Workout.create!(
  name: 'Leg day',
  date: Date.today + 21,
  duration: 93,
  week: 4,
  workout_program: max_gainz
)
puts 'Workouts for week 4 created!'
puts 'All Workouts created!'

# ----- Seeding instances of exercise -----
puts 'Creating exercises...'
bench_press1 = Exercise.create!(
  name: 'Barbell Bench Press',
  category: 'Chest',
  sets: 3,
  reps: 8,
  weight: 80,
  rest: 120,
  rpe: 7,
  workout: push_week1
)
puts 'Exercises for Week 1 of Push Day created!'

lat_pulldown1 = Exercise.create!(
  name: 'Lat Pulldown Machine',
  category: 'Back',
  sets: 4,
  reps: 8,
  weight: 55,
  rest: 90,
  rpe: 7,
  workout: pull_week1
)
puts 'Exercises for Week 1 of Pull Day created!'

squat1 = Exercise.create!(
  name: 'Barbell High-Bar Squat',
  category: 'Legs',
  sets: 3,
  reps: 5,
  weight: 225,
  rest: 120,
  rpe: 9,
  workout: legs_week1
)
puts 'Exercises for Week 1 of Leg Day created!'

bench_press2 = Exercise.create!(
  name: 'Barbell Bench Press',
  category: 'Chest',
  sets: 3,
  reps: 9,
  weight: 80,
  rest: 120,
  rpe: 8,
  workout: push_week2
)
puts 'Exercises for Week 2 of Push Day created!'

lat_pulldown2 = Exercise.create!(
  name: 'Lat Pulldown Machine',
  category: 'Back',
  sets: 4,
  reps: 9,
  weight: 55,
  rest: 90,
  rpe: 7,
  workout: pull_week2
)
puts 'Exercises for Week 2 of Pull Day created!'

squat1 = Exercise.create!(
  name: 'Barbell High-Bar Squat',
  category: 'Legs',
  sets: 3,
  reps: 5,
  weight: 230,
  rest: 120,
  rpe: 9,
  workout: legs_week2
)
puts 'Exercises for Week 2 of Leg Day created!'

bench_press3 = Exercise.create!(
  name: 'Barbell Bench Press',
  category: 'Chest',
  sets: 3,
  reps: 10,
  weight: 80,
  rest: 120,
  rpe: 9,
  workout: push_week3
)
puts 'Exercises for Week 3 of Push Day created!'

lat_pulldown3 = Exercise.create!(
  name: 'Lat Pulldown Machine',
  category: 'Back',
  sets: 4,
  reps: 10,
  weight: 55,
  rest: 90,
  rpe: 8,
  workout: pull_week3
)
puts 'Exercises for Week 3 of Pull Day created!'

squat3 = Exercise.create!(
  name: 'Barbell High-Bar Squat',
  category: 'Legs',
  sets: 3,
  reps: 6,
  weight: 230,
  rest: 120,
  rpe: 9,
  workout: legs_week3
)
puts 'Exercises for Week 3 of Leg Day created!'

bench_press4 = Exercise.create!(
  name: 'Barbell Bench Press',
  category: 'Chest',
  sets: 3,
  reps: 12,
  weight: 80,
  rest: 120,
  rpe: 10,
  workout: push_week4
)
puts 'Exercises for Week 4 of Push Day created!'

lat_pulldown4 = Exercise.create!(
  name: 'Lat Pulldown Machine',
  category: 'Back',
  sets: 4,
  reps: 12,
  weight: 55,
  rest: 90,
  rpe: 9,
  workout: pull_week4
)
puts 'Exercises for Week 4 of Pull Day created!'

squat4 = Exercise.create!(
  name: 'Barbell High-Bar Squat',
  category: 'Legs',
  sets: 3,
  reps: 6,
  weight: 235,
  rest: 120,
  rpe: 10,
  workout: legs_week4
)
puts 'Exercises for Week 4 of Leg Day created!'
puts 'Finished creating exercises!'

# ----- Seeding instances of Achievement -----
puts 'Creating achievements...'
achievement2 = Achievement.create!(
  name: 'Newbie Gains',
  message: 'Congratulations on finishing your first workout!',
  description: 'Create your first workout',
  goal: 1,
  trophy: 'bronze',
  category: 'cardio'
)

achievement3 = Achievement.create!(
  name: 'Pro Gains',
  message: 'Congratulations on finishing 50 workouts!',
  description: 'Create 50 workouts',
  goal: 50,
  trophy: 'silver',
  category: 'cardio'
)

achievement4 = Achievement.create!(
  name: 'Master Gains',
  message: 'Congratulations on finishing 100 workouts!',
  description: 'Create 100 workouts',
  goal: 100,
  trophy: 'gold',
  category: 'cardio'
)

achievement6 = Achievement.create!(
  name: 'Cardio Master',
  message: 'You have completed 100 hours of cardio, wow!',
  description: 'Do a total of 100 hours of cardio exercises',
  goal: 100,
  trophy: 'gold',
  category: 'cardio'
)

achievement7 = Achievement.create!(
  name: 'Bicep Beginner',
  message: 'Congratulations, you finished 5 bicep exercises!',
  description: 'Do a total of 5 bicep exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'biceps'
)

achievement8 = Achievement.create!(
  name: 'Bicep Enthusiast',
  message: 'Congratulations, you finished 25 bicep exercises!',
  description: 'Do a total of 25 bicep exercises',
  goal: 25,
  trophy: 'silver',
  category: 'biceps'
)

achievement9 = Achievement.create!(
  name: 'Bicep Boss',
  message: 'Congratulations, you finished 80 bicep exercises!',
  description: 'Do a total of 80 bicep exercises',
  goal: 80,
  trophy: 'gold',
  category: 'biceps'
)

achievement10 = Achievement.create!(
  name: 'Bicep Grandmaster',
  message: 'Congratulations, you finished 200 bicep exercises!',
  description: 'Do a total of 200 bicep exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'biceps'
)

achievement11 = Achievement.create!(
  name: 'Abs Amateur',
  message: 'Congratulations, you finished 5 abs exercises!',
  description: 'Do a total of 5 abs exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'abs'
)

achievement12 = Achievement.create!(
  name: 'Abs Apprentice',
  message: 'Congratulations, you finished 25 abs exercises!',
  description: 'Do a total of 25 abs exercises',
  goal: 25,
  trophy: 'silver',
  category: 'abs'
)

achievement13 = Achievement.create!(
  name: 'Abs Pro',
  message: 'Congratulations, you finished 80 abs exercises!',
  description: 'Do a total of 80 abs exercises',
  goal: 80,
  trophy: 'gold',
  category: 'abs'
)

achievement14 = Achievement.create!(
  name: 'Abs Grandmaster',
  message: 'Congratulations, you finished 200 abs exercises!',
  description: 'Do a total of 200 abs exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'abs'
)

achievement15 = Achievement.create!(
  name: 'Triceps Novice',
  message: 'Congratulations, you finished 5 triceps exercises!',
  description: 'Do a total of 5 triceps exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'triceps'
)

achievement16 = Achievement.create!(
  name: 'Tricep Trooper',
  message: 'Congratulations, you finished 25 triceps exercises!',
  description: 'Do a total of 25 triceps exercises',
  goal: 25,
  trophy: 'silver',
  category: 'triceps'
)

achievement17 = Achievement.create!(
  name: 'Triceps Tank',
  message: 'Congratulations, you finished 80 triceps exercises!',
  description: 'Do a total of 80 triceps exercises',
  goal: 80,
  trophy: 'gold',
  category: 'triceps'
)

achievement18 = Achievement.create!(
  name: 'Triceps Grandmaster',
  message: 'Congratulations, you finished 200 triceps exercises!',
  description: 'Do a total of 200 triceps exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'triceps'
)

achievement19 = Achievement.create!(
  name: 'Back Beginner',
  message: 'Congratulations, you finished 5 back exercises!',
  description: 'Do a total of 5 back exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'back'
)

achievement20 = Achievement.create!(
  name: 'Back Builder',
  message: 'Congratulations, you finished 25 back exercises!',
  description: 'Do a total of 25 back exercises',
  goal: 25,
  trophy: 'silver',
  category: 'back'
)

achievement21 = Achievement.create!(
  name: 'Broadback Brother',
  message: 'Congratulations, you finished 80 back exercises!',
  description: 'Do a total of 80 back exercises',
  goal: 80,
  trophy: 'gold',
  category: 'back'
)

achievement22 = Achievement.create!(
  name: 'Back Grandmaster',
  message: 'Congratulations, you finished 200 back exercises!',
  description: 'Do a total of 200 back exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'back'
)

achievement23 = Achievement.create!(
  name: 'Leg Day Survivor',
  message: 'Congratulations, you finished 5 leg exercises!',
  description: 'Do a total of 5 leg exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'legs'
)

achievement24 = Achievement.create!(
  name: 'Leg Connoisseur',
  message: 'Congratulations, you finished 25 leg exercises!',
  description: 'Do a total of 25 leg exercises',
  goal: 25,
  trophy: 'silver',
  category: 'legs'
)

achievement25 = Achievement.create!(
  name: 'Leg Luminary',
  message: 'Congratulations, you finished 80 leg exercises!',
  description: 'Do a total of 80 leg exercises',
  goal: 80,
  trophy: 'gold',
  category: 'legs'
)

achievement26 = Achievement.create!(
  name: 'Leg Grandmaster',
  message: 'Congratulations, you finished 200 leg exercises!',
  description: 'Do a total of 200 leg exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'legs'
)

achievement27 = Achievement.create!(
  name: 'Chest Cub',
  message: 'Congratulations, you finished 5 chest exercises!',
  description: 'Do a total of 5 chest exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'chest'
)

achievement28 = Achievement.create!(
  name: 'Chest Challenger',
  message: 'Congratulations, you finished 25 chest exercises!',
  description: 'Do a total of 25 chest exercises',
  goal: 25,
  trophy: 'silver',
  category: 'chest'
)

achievement29 = Achievement.create!(
  name: 'Pecs Professional',
  message: 'Congratulations, you finished 80 chest exercises!',
  description: 'Do a total of 80 chest exercises',
  goal: 80,
  trophy: 'gold',
  category: 'chest'
)

achievement30 = Achievement.create!(
  name: 'Chest Grandmaster',
  message: 'Congratulations, you finished 200 chest exercises!',
  description: 'Do a total of 200 chest exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'chest'
)

achievement31 = Achievement.create!(
  name: 'Shoulder Scout',
  message: 'Congratulations, you finished 5 shoulder exercises!',
  description: 'Do a total of 5 shoulder exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'shoulders'
)

achievement32 = Achievement.create!(
  name: 'Shoulder Impressionist',
  message: 'Congratulations, you finished 25 shoulder exercises!',
  description: 'Do a total of 25 shoulder exercises',
  goal: 25,
  trophy: 'silver',
  category: 'shoulders'
)

achievement33 = Achievement.create!(
  name: 'Shoulder Samurai',
  message: 'Congratulations, you finished 80 shoulder exercises!',
  description: 'Do a total of 80 shoulder exercises',
  goal: 80,
  trophy: 'gold',
  category: 'shoulders'
)

achievement34 = Achievement.create!(
  name: 'Shoulder Grandmaster',
  message: 'Congratulations, you finished 200 shoulder exercises!',
  description: 'Do a total of 200 shoulder exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'shoulders'
)

puts 'Finished creating achievements!'
