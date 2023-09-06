class RemoveBadgeUrlFromAchievements < ActiveRecord::Migration[7.0]
  def change
    remove_column :achievements, :badge_url, :string
  end
end
