class Workout < ApplicationRecord
  belongs_to :workout_program
  has_many :exercises, dependent: :destroy

  validates :name, :duration, :date, presence: true
  validates :duration, numericality: true, comparison: { greater_than_or_equal_to: 0 }
end
