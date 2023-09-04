class User < ApplicationRecord
  has_one :workout_program
  has_many :workouts, through: :workout_program
  has_many :user_achievements
  has_many :achievements, through: :user_achievements

  validates :username, presence: true
  validates :age, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :goal, inclusion: { in: ['Lose weight', 'Gain muscle', 'Get shredded', 'Improve Flexibility'] }
  validates :gender, inclusion: { in: %w[Male Female Other] }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
