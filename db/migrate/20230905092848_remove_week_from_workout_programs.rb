class RemoveWeekFromWorkoutPrograms < ActiveRecord::Migration[7.0]
  def change
    remove_column :workout_programs, :week, :integer
  end
end
