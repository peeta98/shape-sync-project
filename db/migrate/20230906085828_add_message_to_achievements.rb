class AddMessageToAchievements < ActiveRecord::Migration[7.0]
  def change
    add_column :achievements, :message, :string
  end
end
