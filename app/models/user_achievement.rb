class UserAchievement < ApplicationRecord
  belongs_to :user
  belongs_to :achievement

  validates :date_of_completion, presence: true
end
