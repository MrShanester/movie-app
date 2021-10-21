class ActorsController < ApplicationController
  def index
    output = Actor.all
    render json: output.as_json
  end

  def show
    input = params["id"]
    output = Actor.find_by id: input
    render json: output.as_json
  end

  def create
    actor = Actor.new(first_name: params["first_name"], last_name: params["last_name"], known_for: params["known_for"], gender: params["gender"], age: params["age"])
    if actor.save
      render json: actor.as_json
    else 
      render json: {error: actor.errors.full_messages}, status: 406
    end
  end

  def destroy
    input = params["id"].to_i
    actor = Actor.find_by id: input
    actor.destroy
    render json: {message: "Actor Annihilated"}
  end

  def update
    input = params["id"]
    actor = Actor.find_by id: input
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.gender = params["gender"] || actor.gender
    actor.age = params["age"] || actor.age
    if actor.save
      render json: actor.as_json
    else 
      render json: {error: actor.errors.full_messages}, status: 406
    end
  end
end
