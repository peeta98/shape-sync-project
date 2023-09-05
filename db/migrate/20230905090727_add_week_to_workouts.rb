class AddWeekToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :week, :integer
  end
end
