class Achievement < ApplicationRecord
  has_many :user_achievements
  has_many :users, through: :user_achievements
  validates :category, inclusion: { in: ['chest', 'back', 'legs', 'shoulders', 'biceps', 'triceps', 'abs', 'cardio'] }
  validates :trophy, inclusion: { in: ['bronze', 'silver', 'gold', 'platinum'] }
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
end
