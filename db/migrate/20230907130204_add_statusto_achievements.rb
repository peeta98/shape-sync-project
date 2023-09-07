class AddStatustoAchievements < ActiveRecord::Migration[7.0]
  def change
    add_column :achievements, :status, :string, default: "Locked"
  end
end
