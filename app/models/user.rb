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
end
