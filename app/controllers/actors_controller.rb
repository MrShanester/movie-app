class ActorsController < ApplicationController
  def actor
    input = params["id"]
    content = Actor.find_by id: input
    render json: content.as_json
  end

  def all_actors
    content = Actor.all
    render json: content.as_json
  end
end
