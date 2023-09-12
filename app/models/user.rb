class User < ApplicationRecord
  has_one :workout_program, dependent: :destroy
  has_many :workouts, through: :workout_program, dependent: :destroy
  has_many :exercises, through: :workouts
  has_many :user_achievements, dependent: :destroy
  has_many :achievements, through: :user_achievements, dependent: :destroy
  has_one_attached :avatar

  validates :username, presence: true
  validates :age, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :goal, inclusion: { in: ['Lose weight', 'Gain muscle', 'Get shredded', 'Improve Flexibility'] }, allow_blank: true;
  validates :gender, inclusion: { in: %w[Male Female Other] }, allow_blank: true;

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def favorite_bodypart
    user_exercises = Exercise.where(workout: workouts)
    favorite = user_exercises.group(:bodyPart).sum(:sets).max_by{ |_, sets| sets }
    favorite # Returns an array, 1st value related to the bodyPart, 2nd related to the total number of sets
  end

  def favorite_target
    user_exercises = Exercise.where(workout: workouts)
    favorite = user_exercises.group(:target).sum(:reps).max_by{ |_, reps| reps }
    favorite # Returns an array, 1st value related to the target, 2nd related to the total number of reps
  end

  def strongest_exercise
    user_exercises = Exercise.where(workout: workouts)
    user_exercises.max_by{ |exercise| exercise.weight }
  end

  # Create a method to check if each achievement was unlocked
  # These methods should all return a boolean value depending on the outcome
  def bronze_achievement1?
    workout_program.present?
  end

  def bronze_achievement2?
    any_exercise = false
    workouts.each do |workout|
      any_exercise = true if workout.exercises.present?
    end
    any_exercise
  end

  def silver_achievement1?
    heavy_exercise = false
    user_exercises = Exercise.where(workout: workouts) # Retrieves all the exercise instances that belong the the user's workouts
    user_exercises.each do |exercise|
      heavy_exercise = true if exercise.weight >= 40 # Return true if one of the exercises weight is equal or higher then 40kg
    end
    heavy_exercise
  end

  def silver_achievement2? # User needs to do more than 9 total sets in a workout
    workouts.to_a.any?{ |workout| workout.exercises.sum(:sets) > 9 }
  end

  def gold_achievement1? # User needs to have more than 2 exercise.target = "biceps" in a workout
    workouts.to_a.any?{ |workout| workout.exercises.where(target: "biceps").count > 2}
  end

  def gold_achievement2? # User needs to do 8 sets or more exercise.bodyPart = "lower legs" || exercise.bodyPart = "upper legs" in a workout
    workouts.to_a.any?{ |workout| workout.exercises.where(bodyPart: ["lower legs", "upper legs"]).sum(:sets) >= 8 }
  end

  def platinum_achievement1? # User needs to add an exercise with 200kg or more weight in a workout
    super_heavy_exercise = false
    user_exercises = Exercise.where(workout: workouts) # Retrieves all the exercise instances that belong the the user's workouts
    user_exercises.each do |exercise|
      super_heavy_exercise = true if exercise.weight >= 200 # Return true if one of the exercises weight is equal or higher then 40kg
    end
    super_heavy_exercise
  end

  def platinum_achievement2? # User needs to do a total amount of reps > 200 in a workout
    workouts.to_a.any?{ |workout| workout.exercises.sum(:reps) > 200 }
  end
end
