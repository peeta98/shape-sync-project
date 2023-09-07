class AddGoalToAchievements < ActiveRecord::Migration[7.0]
  def change
    add_column :achievements, :goal, :integer
  end
end
