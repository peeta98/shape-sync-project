class ExercisePolicy < ApplicationPolicy
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
       # Users can only see their workout programs
    end
  end

  def index?
    true
  end

  def create?
    true # All users should be able to create a new workout 
  end

  def show?
    record.workout.user == user # User can only see HIS workout
  end

  def update?
    record.workout.user == user # User can only update HIS workout 
  end

  def destroy?
    record.workout.user == user # User can only destroy HIS workout 
  end


  def library?
    true
  end
end
