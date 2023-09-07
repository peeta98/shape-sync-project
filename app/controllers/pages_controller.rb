class PagesController < ApplicationController
  def library
    @exercises = Exercise.order(name: :asc, category: :desc)
    authorize @exercises
    @exercise_names = @exercises.map(&:name).uniq
    if params[:search].present?
      @exercises = @exercises.where("name || category ILIKE ?", "%#{params[:search]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "pages/list", locals: {exercises: @exercises}, formats: [:html] }
    end
  end
end
