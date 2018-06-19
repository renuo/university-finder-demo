class UniversitiesController < ApplicationController
  def index
    @universities = University.all.limit(50)
  end

  def show
    @university = University.find(params[:id]);
  end
end
