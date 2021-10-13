class ApplicationController < ActionController::API
  def single_actor
    content = Actor.find_by id: 1
    render json: content.as_json
  end
end
