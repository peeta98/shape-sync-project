class WorkoutProgram < ApplicationRecord
  belongs_to :user
  has_many :workouts, dependent: :destroy
  has_many :exercises, through: :workouts, dependent: :destroy

  validates :total_duration, :workout_split, :weekly_frequency, :week, :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
  validates :weekly_frequency, numericality: true, comparison: { greater_than_or_equal_to: 1, less_than_or_equal_to: 7 }
  validates :total_duration, numericality: true, comparison: { greater_than_or_equal_to: 0 }
  validates :week, numericality: true, comparison: { greater_than_or_equal_to: 1 }
end
