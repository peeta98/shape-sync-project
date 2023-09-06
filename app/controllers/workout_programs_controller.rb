class WorkoutProgramsController < ApplicationController
  before_action :find_workout_program, only: %i[show edit update destroy]
  # We always need to authorize the instance variable!

  def show
    authorize @workout_program
  end

  def edit
    authorize @workout_program
  end

  def update
    authorize @workout_program
    if @workout_program.update(workout_program_params)
      redirect_to @workout_program, notice: 'Successfully updated your workout program'
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def new
    @workout_program = WorkoutProgram.new
    authorize @workout_program
  end

  def create
    @workout_program = WorkoutProgram.new(workout_program_params)
    @workout_program.user = current_user
    authorize @workout_program
    if @workout_program.save
      redirect_to workout_program_path(@workout_program), notice: 'You have successfully created your workout program'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @workout_program
    @workout_program.destroy
    redirect_to root_path
  end

  private

  def workout_program_params
    params.require(:workout_program).permit( :weekly_frequency, :workout_split, :start_date, :end_date)
  end

  def find_workout_program
    @workout_program = WorkoutProgram.find(params[:id])
  end
end
