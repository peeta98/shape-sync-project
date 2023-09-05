class ExercisesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_workout, only: %i[index create new]

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to  workout_path(@workout)
    else
      render :new
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update(exercise_params)
      redirect_to workout_path(@workout)
    else
      render :edit
    end
  end
  
  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to workout_path(@workout)
  end

  private
  
  def exercise_params
    params.require(:exercise).permit(:name, :category, :sets, :reps, :weight, :rest, :rpe)
  end
  def set_workout
    @workout = Workout.find(params[:workout_id])
  end
end
