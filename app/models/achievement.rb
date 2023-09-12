class Achievement < ApplicationRecord
  has_many :user_achievements
  has_many :users, through: :user_achievements
  validates :category, inclusion: { in: ['Chest', 'Back', 'Legs', 'Shoulders', 'Biceps', 'Triceps', 'Abs', 'Cardio', 'General'] }
  validates :trophy, inclusion: { in: ['bronze', 'silver', 'gold', 'platinum'] }
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :status, inclusion: { in: ['Locked', 'Unlocked'] }
end
