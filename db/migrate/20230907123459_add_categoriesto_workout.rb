class AddCategoriestoWorkout < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :categories, :string
  end
end
