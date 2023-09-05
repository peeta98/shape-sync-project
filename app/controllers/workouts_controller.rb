class WorkoutsController < ApplicationController

 # before_action :authenticate_user!
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
    @exercises = @workout.exercises
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout, notice: 'Workout was successfully created!'
    else
      render :new
    end
  end
end

  private

    def workout_params
      params.require(:workout).permit(:name, :date, :duration, exercise_ids: [])
    end
