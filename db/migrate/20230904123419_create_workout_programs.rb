class CreateWorkoutPrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_programs do |t|
      t.integer :weekly_frequency
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
