class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: Movie::RAILS_GENRE_LIST)
  end

  def show
    @movies = Movie.find(params[:id])
  end
end
