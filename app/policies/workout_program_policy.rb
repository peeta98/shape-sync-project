class WorkoutProgramPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    true # All users should be able to create a new workout program
  end

  def show?
    record.user == user # User can only see HIS workout program
  end

  def update?
    record.user == user # User can only update HIS workout program
  end

  def destroy?
    record.user == user # User can only destroy HIS workout program
  end
end
