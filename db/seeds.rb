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
  categories: ['UpperBody'],
  date: Date.today,
  duration: 90,
  workout_program: max_gainz
)
pull_week1 = Workout.create!(
  categories: ['UpperBody'],
  date: Date.today + 1,
  duration: 75,
  workout_program: max_gainz
)
legs_week1 = Workout.create!(
  categories: ['LowerBody'],
  date: Date.today + 2,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 1 created!'

push_week2 = Workout.create!(
  categories: ['UpperBody'],
  date: Date.today + 5,
  duration: 90,
  workout_program: max_gainz
)
pull_week2 = Workout.create!(
  categories: ['UpperBody'],
  date: Date.today + 6,
  duration: 75,
  workout_program: max_gainz
)
legs_week2 = Workout.create!(
  categories: ['LowerBody'],
  date: Date.today + 7,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 2 created!'

push_week3 = Workout.create!(
  categories: ['UpperBody'],
  date: Date.today + 12,
  duration: 90,
  workout_program: max_gainz
)
pull_week3 = Workout.create!(
  categories: ['UpperBody'],
  date: Date.today + 13,
  duration: 75,
  workout_program: max_gainz
)
legs_week3 = Workout.create!(
  categories: ['LowerBody'],
  date: Date.today + 14,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 3 created!'

push_week4 = Workout.create!(
  categories: ['UpperBody'],
  date: Date.today + 19,
  duration: 90,
  workout_program: max_gainz
)
pull_week4 = Workout.create!(
  categories: ['UpperBody'],
  date: Date.today + 20,
  duration: 75,
  workout_program: max_gainz
)
legs_week4 = Workout.create!(
  categories: ['LowerBody'],
  date: Date.today + 21,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 4 created!'
puts 'All Workouts created!'

# ----- Seeding instances of exercise -----
puts 'Creating exercises...'
# ----- CREATING EXERCISES FOR PUSH DAY -----
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
puts '1st Exercise for Week 1 of Push Day created!'

chest_fly_machine1 = Exercise.create!(
  name: 'Chest Fly Machine',
  category: 'Chest',
  sets: 3,
  reps: 12,
  weight: 40,
  rest: 60,
  rpe: 7,
  workout: push_week1
)
puts '2nd Exercise for Week 1 of Push Day created!'

chest_dips1 = Exercise.create!(
  name: 'Chest Dips',
  category: 'Chest',
  sets: 3,
  reps: 6,
  weight: 5,
  rest: 90,
  rpe: 8,
  workout: push_week1
)
puts '3rd Exercise for Week 1 of Push Day created!'

db_shoulder_press1 = Exercise.create!(
  name: 'Seated Dumbbell Shoulder Press',
  category: 'Shoulders',
  sets: 3,
  reps: 12,
  weight: 20,
  rest: 75,
  rpe: 9,
  workout: push_week1
)
puts '4th Exercise for Week 1 of Push Day created!'

cable_lateral_raise1 = Exercise.create!(
  name: 'Cable Shoulder Lateral Raise',
  category: 'Shoulders',
  sets: 3,
  reps: 12,
  weight: 10,
  rest: 60,
  rpe: 8,
  workout: push_week1
)
puts '5th Exercise for Week 1 of Push Day created!'

triceps_cable_pressdown1 = Exercise.create!(
  name: 'Triceps Cable Pressdown',
  category: 'Triceps',
  sets: 3,
  reps: 12,
  weight: 50,
  rest: 90,
  rpe: 8,
  workout: push_week1
)
puts '6th Exercise for Week 1 of Push Day created!'
puts 'All Exercises for Week 1 of Push Day created!'

puts 'Creating exercises for Week 1 of Pull Day...'
# ----- CREATING EXERCISES FOR PULL DAY -----
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
puts '1st Exercise for Week 1 of Pull Day created!'

machine_row1 = Exercise.create!(
  name: 'Seated Row Machine',
  category: 'Back',
  sets: 4,
  reps: 12,
  weight: 70,
  rest: 90,
  rpe: 8,
  workout: pull_week1
)
puts '2nd Exercise for Week 1 of Pull Day created!'

reverse_pec_deck1 = Exercise.create!(
  name: 'Reverse Pec Deck Machine',
  category: 'Back',
  sets: 4,
  reps: 10,
  weight: 25,
  rest: 60,
  rpe: 6,
  workout: pull_week1
)
puts '3rd Exercise for Week 1 of Pull Day created!'

ezbar_curl1 = Exercise.create!(
  name: 'EZ-Bar Curl',
  category: 'Biceps',
  sets: 3,
  reps: 8,
  weight: 30,
  rest: 90,
  rpe: 8,
  workout: pull_week1
)
puts '4th Exercise for Week 1 of Pull Day created!'

db_preacher_curls1 = Exercise.create!(
  name: 'One Arm Dumbbell Preacher Curls',
  category: 'Biceps',
  sets: 3,
  reps: 12,
  weight: 10,
  rest: 45,
  rpe: 8,
  workout: pull_week1
)
puts '5th Exercise for Week 1 of Pull Day created!'
puts 'All Exercises for Week 1 of Pull Day created!'

puts 'Creating Exercises for Week 1 of Leg Day...'
# ----- CREATING EXERCISES FOR LEG DAY -----
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
puts '1st Exercise for Week 1 of Leg Day created!'

bb_rdl1 = Exercise.create!(
  name: 'Barbell Romanian Dead Lift',
  category: 'Legs',
  sets: 3,
  reps: 8,
  weight: 100,
  rest: 120,
  rpe: 9,
  workout: legs_week1
)
puts '2nd Exercise for Week 1 of Leg Day created!'

leg_extension1 = Exercise.create!(
  name: 'Leg Extension Machine',
  category: 'Legs',
  sets: 3,
  reps: 15,
  weight: 80,
  rest: 45,
  rpe: 9,
  workout: legs_week1
)
puts '3rd Exercise for Week 1 of Leg Day created!'

seated_leg_curl1 = Exercise.create!(
  name: 'Seated Leg Curl Machine',
  category: 'Legs',
  sets: 3,
  reps: 15,
  weight: 70,
  rest: 45,
  rpe: 9,
  workout: legs_week1
)
puts '4th Exercise for Week 1 of Leg Day created!'
puts 'All Exercises for Week 1 of Leg Day created!'

# ----- CREATING THE SAME EXERCISES FOR THE REMAINING WEEKS! -----
puts 'Creating exercises for remaining weeks of Push Day...'
[push_week2, push_week3, push_week4].each do |push_week|
  bench_press = bench_press1.dup
  bench_press.workout = push_week
  bench_press.save!
  chest_fly_machine = chest_fly_machine1.dup
  chest_fly_machine.workout = push_week
  chest_fly_machine.save!
  chest_dips = chest_dips1.dup
  chest_dips.workout = push_week
  chest_dips.save!
  cable_lateral_raise = cable_lateral_raise1.dup
  cable_lateral_raise.workout = push_week
  cable_lateral_raise.save!
  db_shoulder_press = db_shoulder_press1.dup
  db_shoulder_press.workout = push_week
  db_shoulder_press.save!
  triceps_cable_pressdown = triceps_cable_pressdown1.dup
  triceps_cable_pressdown.workout = push_week
  triceps_cable_pressdown.save!
end
puts 'Created all exercises for the remaining weeks of Push Day!'

puts 'Creating exercises for remaining weeks of Pull Day...'
[pull_week2, pull_week3, pull_week4].each do |pull_week|
  lat_pulldown = lat_pulldown1.dup
  lat_pulldown.workout = pull_week
  lat_pulldown.save!
  machine_row = machine_row1.dup
  machine_row.workout = pull_week
  machine_row.save!
  reverse_pec_deck = reverse_pec_deck1.dup
  reverse_pec_deck.workout = pull_week
  reverse_pec_deck.save!
  ezbar_curl = ezbar_curl1.dup
  ezbar_curl.workout = pull_week
  ezbar_curl.save!
  db_preacher_curls = db_preacher_curls1.dup
  db_preacher_curls.workout = pull_week
  db_preacher_curls.save!
end
puts 'Created all exercises for the remaining weeks of Pull Day!'

puts 'Creating exercises for remaining weeks of legs Day...'
[legs_week2, legs_week3, legs_week4].each do |legs_week|
  squat = squat1.dup
  squat.workout = legs_week
  squat.save!
  bb_rdl = bb_rdl1.dup
  bb_rdl.workout = legs_week
  bb_rdl.save!
  leg_extension = leg_extension1.dup
  leg_extension.workout = legs_week
  leg_extension.save!
  seated_leg_curl = seated_leg_curl1.dup
  seated_leg_curl.workout = legs_week
  seated_leg_curl.save!
end
puts 'Created all exercises for the remaining weeks of Legs Day!'
puts 'All exercises for all workous created!'

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
