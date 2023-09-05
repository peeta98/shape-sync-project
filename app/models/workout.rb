class Workout < ApplicationRecord
  belongs_to :workout_program
  belongs_to :user
  has_many :exercises, dependent: :destroy

  validates :name, :duration, :date, :week, presence: true
  validates :duration, numericality: true, comparison: { greater_than_or_equal_to: 0 }
  validates :week, numericality: true, comparison: { greater_than_or_equal_to: 0 }
end
