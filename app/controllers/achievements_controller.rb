class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
    sort_by = params[:sort] || 'category'

    case sort_by
    when 'completion'
      @achievements = @achievements.order(goal: :desc)
    when 'status'
      @achievements = @achievements.order(status: :desc)
    else
      @achievements = @achievements.order(category: :asc)
    end

    respond_to do |format|
      format.html
      format.json { render  'achievements/achievement', collection: @achievements }
    end
  end

  def completion
    @achievements = Achievement.all
    @achievements = @achievements.order(goal: :desc)
    respond_to do |format|
      format.html
      format.json { render json: { achievements: @achievements } }
    end
  end

  def category
    @achievements = Achievement.all
    @achievements = @achievements.order(category: :asc)

    respond_to do |format|
      format.html
      format.json { render json: { achievements: @achievements } }
    end
  end

  def status
    @achievements = Achievement.all
    @achievements = @achievements.order(status: :desc)

    respond_to do |format|
      format.html
      format.json { render json: { achievements: @achievements } }
    end
  end
end
