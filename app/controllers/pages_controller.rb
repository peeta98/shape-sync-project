class PagesController < ApplicationController
  def home
    start_date = params.fetch(:start_date, Date.today).to_date
    @workouts = Workout.where(start_time: start_date.beginning_of_week..start_date.end_of_week)
  end

  def library
    @exercises = Exercise.order(name: :asc, category: :desc)
    authorize @exercises
    @exercise_names = @exercises.map(&:name).uniq
    if params[:search].present?
      search_term = "%#{params[:search]}%"
      @exercises = @exercises.where("name ILIKE :search OR category ILIKE :search OR target ILIKE :search ", search: search_term)
    else
      @exercises = []
    end


    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "pages/list", locals: { exercises: @exercises }, formats: [:html] }
    end
  end
end
