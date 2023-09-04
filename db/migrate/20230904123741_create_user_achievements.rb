class CreateUserAchievements < ActiveRecord::Migration[7.0]
  def change
    create_table :user_achievements do |t|
      t.date :date_of_completion
      t.references :user, null: false, foreign_key: true
      t.references :achievement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
