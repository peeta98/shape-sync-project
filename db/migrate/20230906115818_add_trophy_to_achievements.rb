class AddTrophyToAchievements < ActiveRecord::Migration[7.0]
  def change
    add_column :achievements, :trophy, :string
  end
end
