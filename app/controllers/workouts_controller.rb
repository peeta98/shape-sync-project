class WorkoutsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_workout, only: %i[show edit update destroy]
  before_action :find_workout_program, only: %i[create new]

  def index
    @workout_program = WorkoutProgram.find(params[:workout_program_id])
    @workouts = policy_scope(current_user.workouts) 
end

  def show
    @workout = find_workout
    authorize @workout
    @exercises = @workout.exercises
  end

  def new
    @workout = current_user.workouts.build
    authorize @workout
   
  end

  def create
    @workout = current_user.workouts.build(workout_params)
    authorize @workout
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
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Workout not found.'
  end

  def find_workout_program
    @workout_program = WorkoutProgram.find(params[:workout_program_id])
  end
end
