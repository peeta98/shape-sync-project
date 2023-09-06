class WorkoutPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope
      # user.workouts # Users can only see their workout programs
    end
  end

  def create?
    true # All users should be able to create a new workout program
  end

  def show?
    record.workout_program.user == user # User can only see HIS workout program
  end

  def update?
    record.workout_program.user == user # User can only update HIS workout program
  end

  def destroy?
    record.workout_program.user == user # User can only destroy HIS workout program
  end


end
