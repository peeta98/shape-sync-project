class AchievementsController < ApplicationController
  def show
    @user = current_user
    @user_achievements = @user.achievements
  end
end
