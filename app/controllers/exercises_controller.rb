class ExercisesController < ApplicationController
  #before_action :authenticate_user!
  before_action :find_workout
  before_action :find_exercise, only: [:edit, :update, :destroy]
  def index
    @workout = Workout.find(params[:workout_id])
    @exercises = policy_scope(Exercise) 
  end

  def new
    @exercise = @workout.exercises.build
  end

  def create
    @exercise = @workout.exercises.build(exercise_params)
    if @exercise.save
      redirect_to @workout, notice: 'Exercise was successfully added to the workout!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)
      redirect_to @workout, notice: 'Exercise was successfully updated!'
    else
      render :edit
    end
  end

  def destroy
    @exercise.destroy
    redirect_to @workout, notice: 'Exercise was successfully removed from the workout.'
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :category, :sets, :reps, :weight, :rest, :rpe)
  end

  def find_workout
    @workout = Workout.find(params[:workout_id])
  end

  def find_exercise
    @exercise = @workout.exercises.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to @workout, alert: 'Exercise not found in the workout.'
  end
end
