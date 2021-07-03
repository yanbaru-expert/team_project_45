class MoviesController < ApplicationController
  def index
    Movie::RAILS_GENRE_LIST
    @movies = Movie.order(:id)
  end

  def show
    @movies = Movie.find(params[:id])
  end
end
