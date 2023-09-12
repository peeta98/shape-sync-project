class UserAchievementsController < ApplicationController
  def bronze1
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(1))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def bronze2
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(2))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def silver1
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(3))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def silver2
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(4))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def gold1
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(5))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def gold2
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(6))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def platinum1
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(7))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def platinum2
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(8))
    authorize @user_achievement
    redirect_to achievements_path
  end
end
