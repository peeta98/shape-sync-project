class WorkoutsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_workout, only: %i[show edit update destroy]

  def index
    @workouts = current_user.workouts
  end

  def show
    @exercises = @workout.exercises
  end

  def new
    @workout = current_user.workouts.build
  end

  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      redirect_to @workout, notice: 'Workout was successfully created!'
    else
      render :new
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :date, :duration, exercise_ids: [])
  end

  def find_workout
    @workout = current_user.workouts.find(params[:id])
  end
end
