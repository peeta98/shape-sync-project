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
    @workout_programs = WorkoutProgram.new
    authorize @workout_programs
  end

  def create
    @workout_programs = WorkoutProgram.new(workout_program_params)
    authorize @workout_programs
    if @workout_programs.save
      redirect_to @workout_programs, notice: 'You have successfully created your workout program'
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
