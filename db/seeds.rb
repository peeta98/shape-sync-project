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
  start_date: Date.today,
  end_date: Date.today + 30.days,
  user: pedro
)
puts 'Workout Program created!'

# ----- Seeding istances of Workout -----
puts 'Creating all the workouts...'
push_week1 = Workout.create!(
  categories: 'UpperBody',
  start_time: Date.today,
  duration: 90,
  workout_program: max_gainz
)
pull_week1 = Workout.create!(
  categories: 'UpperBody',
  start_time: Date.today + 1,
  duration: 75,
  workout_program: max_gainz
)
legs_week1 = Workout.create!(
  categories: 'LowerBody',
  start_time: Date.today + 2,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 1 created!'

push_week2 = Workout.create!(
  categories: 'UpperBody',
  start_time: Date.today + 5,
  duration: 90,
  workout_program: max_gainz
)
pull_week2 = Workout.create!(
  categories: 'UpperBody',
  start_time: Date.today + 6,
  duration: 75,
  workout_program: max_gainz
)
legs_week2 = Workout.create!(
  categories: 'LowerBody',
  start_time: Date.today + 7,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 2 created!'

push_week3 = Workout.create!(
  categories: 'UpperBody',
  start_time: Date.today + 12,
  duration: 90,
  workout_program: max_gainz
)
pull_week3 = Workout.create!(
  categories: 'UpperBody',
  start_time: Date.today + 13,
  duration: 75,
  workout_program: max_gainz
)
legs_week3 = Workout.create!(
  categories: 'LowerBody',
  start_time: Date.today + 14,
  duration: 93,
  workout_program: max_gainz
)
puts 'Workouts for week 3 created!'

push_week4 = Workout.create!(
  categories: 'UpperBody',
  start_time: Date.today + 19,
  duration: 90,
  workout_program: max_gainz
)
pull_week4 = Workout.create!(
  categories: 'UpperBody',
  start_time: Date.today + 20,
  duration: 75,
  workout_program: max_gainz
)
legs_week4 = Workout.create!(
  categories: 'LowerBody',
  start_time: Date.today + 21,
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
achievement2 = Achievement.create!(
  name: 'Newbie Gains',
  message: 'Congratulations on finishing your first workout!',
  description: 'Create your first workout',
  goal: 1,
  trophy: 'bronze',
  category: 'Cardio'
)

achievement3 = Achievement.create!(
  name: 'Pro Gains',
  message: 'Congratulations on finishing 50 workouts!',
  description: 'Create 50 workouts',
  goal: 50,
  trophy: 'silver',
  category: 'Cardio'
)

achievement4 = Achievement.create!(
  name: 'Master Gains',
  message: 'Congratulations on finishing 100 workouts!',
  description: 'Create 100 workouts',
  goal: 100,
  trophy: 'gold',
  category: 'Cardio'
)

achievement6 = Achievement.create!(
  name: 'Cardio Master',
  message: 'You have completed 100 hours of cardio, wow!',
  description: 'Do a total of 100 hours of cardio exercises',
  goal: 100,
  trophy: 'gold',
  category: 'Cardio'
)

achievement7 = Achievement.create!(
  name: 'Bicep Beginner',
  message: 'Congratulations, you finished 5 bicep exercises!',
  description: 'Do a total of 5 bicep exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'Biceps'
)

achievement8 = Achievement.create!(
  name: 'Bicep Enthusiast',
  message: 'Congratulations, you finished 25 bicep exercises!',
  description: 'Do a total of 25 bicep exercises',
  goal: 25,
  trophy: 'silver',
  category: 'Biceps'
)

achievement9 = Achievement.create!(
  name: 'Bicep Boss',
  message: 'Congratulations, you finished 80 bicep exercises!',
  description: 'Do a total of 80 bicep exercises',
  goal: 80,
  trophy: 'gold',
  category: 'Biceps'
)

achievement10 = Achievement.create!(
  name: 'Bicep Grandmaster',
  message: 'Congratulations, you finished 200 bicep exercises!',
  description: 'Do a total of 200 bicep exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'Biceps'
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

achievement13 = Achievement.create!(
  name: 'Abs Pro',
  message: 'Congratulations, you finished 80 abs exercises!',
  description: 'Do a total of 80 abs exercises',
  goal: 80,
  trophy: 'gold',
  category: 'Abs'
)

achievement14 = Achievement.create!(
  name: 'Abs Grandmaster',
  message: 'Congratulations, you finished 200 abs exercises!',
  description: 'Do a total of 200 abs exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'Abs'
)

achievement15 = Achievement.create!(
  name: 'Triceps Novice',
  message: 'Congratulations, you finished 5 triceps exercises!',
  description: 'Do a total of 5 triceps exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'Triceps'
)

achievement16 = Achievement.create!(
  name: 'Tricep Trooper',
  message: 'Congratulations, you finished 25 triceps exercises!',
  description: 'Do a total of 25 triceps exercises',
  goal: 25,
  trophy: 'silver',
  category: 'Triceps'
)

achievement17 = Achievement.create!(
  name: 'Triceps Tank',
  message: 'Congratulations, you finished 80 triceps exercises!',
  description: 'Do a total of 80 triceps exercises',
  goal: 80,
  trophy: 'gold',
  category: 'Triceps'
)

achievement18 = Achievement.create!(
  name: 'Triceps Grandmaster',
  message: 'Congratulations, you finished 200 triceps exercises!',
  description: 'Do a total of 200 triceps exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'Triceps'
)

achievement19 = Achievement.create!(
  name: 'Back Beginner',
  message: 'Congratulations, you finished 5 back exercises!',
  description: 'Do a total of 5 back exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'Back'
)

achievement20 = Achievement.create!(
  name: 'Back Builder',
  message: 'Congratulations, you finished 25 back exercises!',
  description: 'Do a total of 25 back exercises',
  goal: 25,
  trophy: 'silver',
  category: 'Back'
)

achievement21 = Achievement.create!(
  name: 'Broadback Brother',
  message: 'Congratulations, you finished 80 back exercises!',
  description: 'Do a total of 80 back exercises',
  goal: 80,
  trophy: 'gold',
  category: 'Back'
)

achievement22 = Achievement.create!(
  name: 'Back Grandmaster',
  message: 'Congratulations, you finished 200 back exercises!',
  description: 'Do a total of 200 back exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'Back'
)

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

achievement26 = Achievement.create!(
  name: 'Leg Grandmaster',
  message: 'Congratulations, you finished 200 leg exercises!',
  description: 'Do a total of 200 leg exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'Legs'
)

achievement27 = Achievement.create!(
  name: 'Chest Cub',
  message: 'Congratulations, you finished 5 chest exercises!',
  description: 'Do a total of 5 chest exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'Chest'
)

achievement28 = Achievement.create!(
  name: 'Chest Challenger',
  message: 'Congratulations, you finished 25 chest exercises!',
  description: 'Do a total of 25 chest exercises',
  goal: 25,
  trophy: 'silver',
  category: 'Chest'
)

achievement29 = Achievement.create!(
  name: 'Pecs Professional',
  message: 'Congratulations, you finished 80 chest exercises!',
  description: 'Do a total of 80 chest exercises',
  goal: 80,
  trophy: 'gold',
  category: 'Chest'
)

achievement30 = Achievement.create!(
  name: 'Chest Grandmaster',
  message: 'Congratulations, you finished 200 chest exercises!',
  description: 'Do a total of 200 chest exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'Chest'
)

achievement31 = Achievement.create!(
  name: 'Shoulder Scout',
  message: 'Congratulations, you finished 5 shoulder exercises!',
  description: 'Do a total of 5 shoulder exercises',
  goal: 5,
  trophy: 'bronze',
  category: 'Shoulders'
)

achievement32 = Achievement.create!(
  name: 'Shoulder Impressionist',
  message: 'Congratulations, you finished 25 shoulder exercises!',
  description: 'Do a total of 25 shoulder exercises',
  goal: 25,
  trophy: 'silver',
  category: 'Shoulders'
)

achievement33 = Achievement.create!(
  name: 'Shoulder Samurai',
  message: 'Congratulations, you finished 80 shoulder exercises!',
  description: 'Do a total of 80 shoulder exercises',
  goal: 80,
  trophy: 'gold',
  category: 'Shoulders'
)

achievement34 = Achievement.create!(
  name: 'Shoulder Grandmaster',
  message: 'Congratulations, you finished 200 shoulder exercises!',
  description: 'Do a total of 200 shoulder exercises',
  goal: 200,
  trophy: 'platinum',
  category: 'Shoulders'
)

puts 'Finished creating achievements!'
