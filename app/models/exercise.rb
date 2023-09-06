class Exercise < ApplicationRecord
  belongs_to :workout

  validates :name, :category, :weight, :sets, :reps, presence: true
  validates :category, inclusion: { in: ['Chest', 'Back', 'Legs', 'Shoulders', 'Biceps', 'Triceps', 'Abs', 'Cardio'] }
  validates :rpe, numericality: true, comparison: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :rest, numericality: true, comparison: { greater_than_or_equal_to: 0 }
  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
