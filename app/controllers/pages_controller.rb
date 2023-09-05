class PagesController < ApplicationController
  def library
    @exercises = Exercise.all
    authorize @exercises
  end
end
