class ExercisesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end
end
