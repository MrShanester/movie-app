class MoviesController < ApplicationController
  def all_movies
    output = Movie.all
    render json: output
  end

  def single_movie
    input = params[:id].to_i
    output = Movie.find_by id: input
    render json: output
  end
end
