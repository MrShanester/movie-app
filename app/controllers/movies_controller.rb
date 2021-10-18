class MoviesController < ApplicationController
  def index
    output = Movie.all
    render json: output.as_json
  end

  def show
    input = params["id"]
    output = Movie.find_by id: input
    render json: output.as_json
  end

  def create
    movie = Movie.new(title: params["title"], year: params["year"], plot: params["plot"])
    movie.save
    render json: movie.as_json
  end

  def destroy
    input = params["id"].to_i
    movie = Movie.find_by id: input
    movie.destroy
    render json: {message: "Movie Annihilated"}
  end

  def update
    input = params["id"]
    movie = Movie.find_by id: input
    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.save
    render json: movie.as_json
  end
end
