class AchievementPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
    end
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def profile?
    true
  end
end
