class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :category
      t.string :gif
      t.string :bodyPart
      t.string :target
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.integer :rest
      t.integer :rpe
      t.references :library, null: false, foreign_key: true
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
