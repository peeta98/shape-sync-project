class ExercisesController < ApplicationController
  #before_action :authenticate_user!
  before_action :find_workout, only: [:new, :create, :index]
  before_action :find_exercise, only: [:edit, :update, :destroy]
  def index
    @workout = Workout.find(params[:workout_id])
    @exercises = policy_scope(@workout.exercises)
    
  end

  def new
    @exercise = @workout.exercises.build
    authorize @exercise
  end

  def create
    @exercise = @workout.exercises.build(exercise_params)
    if @exercise.save
      redirect_to workout_path(@workout), notice: 'Exercise was successfully added to the workout!'
    else
      render :new, status: :unprocessable_entity
    end
    authorize @exercise
  end

  def edit
   
    authorize @exercise
  end

  def update
    if @exercise.update(exercise_params)
      redirect_to workout_path(@exercise.workout), notice: 'Exercise was successfully updated!'
    else
      render :edit, status: :unprocessable_entity
    end
    authorize @exercise
  end

  def destroy
    @exercise.destroy
    redirect_to workout_path(@exercise.workout), notice: 'Exercise was successfully removed from the workout.'
    authorize @exercise
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :category, :sets, :reps, :weight, :rest, :rpe)
  end

  def find_workout
    @workout = Workout.find(params[:workout_id])
  end

  def find_exercise
    @exercise = Exercise.find(params[:id])
end
end
