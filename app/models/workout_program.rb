class WorkoutProgram < ApplicationRecord
  belongs_to :user
  has_many :workouts, dependent: :destroy
  has_many :exercises, through: :workouts

  validates :weekly_frequency, presence: true
  validates :weekly_frequency, numericality: true, comparison: { greater_than_or_equal_to: 1, less_than_or_equal_to: 7 }

  accepts_nested_attributes_for :workouts
end
