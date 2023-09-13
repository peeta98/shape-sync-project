class UserAchievementsController < ApplicationController
  def bronze1
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find_by(name: "Newbie Gains"))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def bronze2
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(name: "One is better than nothing"))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def silver1
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(name: "Wannabe Powerlifter"))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def silver2
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(name: "Volume is key"))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def gold1
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(name: "Biceps Abuser"))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def gold2
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(name: "Never Skip Leg Day"))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def platinum1
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(name: "Lightweight baby"))
    authorize @user_achievement
    redirect_to achievements_path
  end

  def platinum2
    @user_achievement = UserAchievement.create!(user: current_user, date_of_completion: Date.today, achievement: Achievement.find(name: "Who is gonna carry the boats?"))
    authorize @user_achievement
    redirect_to achievements_path
  end
end
