class UniversitiesController < ApplicationController
  def index
    @query = params[:query].presence
    queried_universities = University.all
    queried_universities = queried_universities.full_text_search(@query) if @query
    @universities = queried_universities.page(params[:page])
  end

  def show
    @university = University.find(params[:id])
  end
end
