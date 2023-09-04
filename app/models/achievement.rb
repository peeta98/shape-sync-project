class Achievement < ApplicationRecord
  has_many :user_achievements
  has_many :users, through: :user_achievements

  validates :name, presence: true, uniqueness: true
  validates :badge_url, presence: true
  validates :description, presence: true, uniqueness: true
end
