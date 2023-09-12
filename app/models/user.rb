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
end
