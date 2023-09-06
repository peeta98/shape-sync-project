class Workout < ApplicationRecord
  belongs_to :workout_program
  has_many :exercises, dependent: :destroy

  validates :categories, :date, presence: true
  validates :duration, numericality: true, comparison: { greater_than_or_equal_to: 0 }
  validates :categories, inclusion: {in: ['Chest', 'Back', 'Legs', 'Shoulders', 'Biceps', 'Triceps', 'Abs', 'Cardio', 'UpperBody','LowerBody', 'FullBody']}
end
