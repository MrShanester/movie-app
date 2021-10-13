Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/single_actor" => "actors#single_actor"
  get "/all_actors" => "actors#all_actors"
end
