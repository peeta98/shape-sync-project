class RemoveTotalDurationFromWorkoutPrograms < ActiveRecord::Migration[7.0]
  def change
    remove_column :workout_program, :total_duration
  end
end
