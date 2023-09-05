class WorkoutProgramsController < ApplicationController
    before_action :find_workout_program, only: [:show, :edit, :update, :destroy]
    def show
    end
    
    def edit
    end
    def update
        if @workout_program.update(workout_program_params)
          redirect_to @workout_program, notice: "Successfully updated your workout program"
        else
          render 'edit', status: :unprocessable_entity
        end
    end
    def new
        @workout_programs = WorkoutProgram.new
    end
     
    def create
        @workout_programs = WorkoutProgram.new(workout_program_params)
        if @workout_programs.save
            redirect_to  @workout_programs notice: "You have successfully created your workout program"
        else 
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        if @workout_program.destroy
            redirect_back(fallback_location: root_path)
        else
            render :show, status: :unprocessable_entity
    end

    private 
    def workout_program_params
        params.require(:workout_program).permit( :weekly_frequency, :workout_split, :start_date, :end_date)
    end

    def find_workout_program
        @workout_program = WorkoutProgram.find(params[:id])
    end

end
