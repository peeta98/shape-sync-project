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
  weekly_frequency: 3,
  start_date: Date.today,
  end_date: Date.today + 30.days,
  user: pedro
)
puts 'Workout Program created!'

# ----- Seeding istances of Workout -----
puts 'Creating all the workouts...'
push_week1 = Workout.create!(
  categories: 'Chest',
  date: Date.today,
  duration: 90,
  workout_program: max_gainz
)
pull_week1 = Workout.create!(
  categories: 'Back',
  date: Date.today + 1,
  duration: 75,
  workout_program: max_gainz
)
legs_week1 = Workout.create!(
  categories: 'Leg day',
  date: Date.today + 2,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 1 created!'

push_week2 = Workout.create!(
  categories: 'Push Day',
  date: Date.today + 5,
  duration: 90,
  workout_program: max_gainz
)
pull_week2 = Workout.create!(
  categories: 'Pull day',
  date: Date.today + 6,
  duration: 75,
  workout_program: max_gainz
)
legs_week2 = Workout.create!(
  categories: 'Leg day',
  date: Date.today + 7,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 2 created!'

push_week3 = Workout.create!(
  categories: 'Push Day',
  date: Date.today + 12,
  duration: 90,
  workout_program: max_gainz
)
pull_week3 = Workout.create!(
  categories: 'Pull day',
  date: Date.today + 13,
  duration: 75,
  workout_program: max_gainz
)
legs_week3 = Workout.create!(
  categories: 'Leg day',
  date: Date.today + 14,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 3 created!'

push_week4 = Workout.create!(
  categories: 'Push Day',
  date: Date.today + 19,
  duration: 90,
  workout_program: max_gainz
)
pull_week4 = Workout.create!(
  categories: 'Pull day',
  date: Date.today + 20,
  duration: 75,
  workout_program: max_gainz
)
legs_week4 = Workout.create!(
  categories: 'Leg day',
  date: Date.today + 21,
  duration: 93,
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
achievement1 = Achievement.create!(
  name: 'Newbie Gains',
  badge_url: 'https://img.freepik.com/free-vector/award-medal-with-red-ribbon_1284-42828.jpg?w=996&t=st=1693901682~exp=1693902282~hmac=ecd8b21a76bf86e7be6ee6ef2373a5918a50594185da93ddf3c9b9b922026366',
  description: 'Congratulations on finishing your first workout!'
)
puts 'Achievement 1 created!'
achievement2 = Achievement.create!(
  name: 'Cardio Master',
  badge_url: 'https://img.freepik.com/free-vector/award-ribbon_24908-54794.jpg?w=1380&t=st=1693901702~exp=1693902302~hmac=d558ef1018194f08eba0da64fb60838071e88311799969cd09d1bf8c018ffc6e',
  description: 'You have completed 100 hours of cardio, wow!'
)
puts 'Achievement 2 created!'
achievement3 = Achievement.create!(
  name: 'Bicep Boss',
  badge_url: 'https://img.freepik.com/free-vector/award-ribbon_24908-54753.jpg?w=1380&t=st=1693901721~exp=1693902321~hmac=532174ad81cb3bfb195a5fe0e559dc81fe8e3343b8281edf8c9186ce8240019f',
  description: 'Congratulations, you finished 50 bicep exercise sets!'
)
puts 'Achievement 3 created!'
puts 'Finished creating achievements!'
