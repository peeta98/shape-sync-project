class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :categories, array: true
      t.date :date
      t.integer :duration
      t.references :workout_program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
