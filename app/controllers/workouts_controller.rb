class WorkoutsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_workout, only: %i[show edit update destroy add_exercise]
  before_action :find_workout_program, only: %i[create new]

  def index
    @workout_program = WorkoutProgram.find(params[:workout_program_id])
    @workouts = policy_scope(current_user.workouts)
  end

  def show
    @workout = find_workout
    authorize @workout
    @exercises = @workout.exercises
    @exercise = Exercise.new
  end

  # GET /workout_programs/:workout_program_id/workouts/new
  def new
    @workout = @workout_program.workouts.build
    authorize @workout
  end

  def create
    authorize @workout
    @workout = @workout_program.workouts.build(workout_params)
    if @workout.save
      redirect_to @workout, notice: 'Workout was successfully created!'
    else
      render :new
    end
  end

  def edit
    authorize @workout
  end

  def update
    authorize @workout
    if params[:workout][:exercise_ids].present?
      selected_exercises = Exercise.where(id: params[:workout][:exercise_ids])
      selected_exercises.each do |selected_exercise|
        selected_exercise.update(workout_id: @workout.id)
      end
    end
    if @workout.update(workout_params)
      redirect_to workout_program_path(@workout.workout_program), notice: 'Weekly workout was successfully updated!'
    else
      render 'workout_programs/show'
    end
  end

  def destroy
    @workout.destroy
    redirect_to @workout_program, notice: 'Weekly workout was successfully deleted.'
  end

  def add_exercise
    authorize @workout
    @exercises = Exercise.all
  end

  private

  def workout_params
    params.require(:workout).permit(:categories, :start_time, :duration, exercise_ids: [])
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
