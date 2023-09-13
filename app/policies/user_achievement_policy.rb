class UserAchievementPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def bronze1?
    true
  end

  def bronze2?
    true
  end

  def silver1?
    true
  end

  def silver2?
    true
  end

  def gold1?
    true
  end

  def gold2?
    true
  end

  def platinum1?
    true
  end

  def platinum2?
    true
  end
end
