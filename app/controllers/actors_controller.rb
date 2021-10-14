class ActorsController < ApplicationController
  def single_actor
    content = Actor.find_by id: 1
    render json: content.as_json
  end

  def all_actors
    content = Actor.all
    render json: content.as_json
  end
end
