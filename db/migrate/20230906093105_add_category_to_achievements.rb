class AddCategoryToAchievements < ActiveRecord::Migration[7.0]
  def change
    add_column :achievements, :category, :string
  end
end
