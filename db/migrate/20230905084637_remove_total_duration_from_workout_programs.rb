class RemoveTotalDurationFromWorkoutPrograms < ActiveRecord::Migration[7.0]
  def change
    remove_column :workout_programs, :total_duration
  end
end
