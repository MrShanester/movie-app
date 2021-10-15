Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actors" => "actors#actor"
  get "/actors/:id" => "actors#actor"
  get "/all_actors" => "actors#all_actors"
  get "/all_movies" => "movies#all_movies"
  get "/single_movie/:id" => "movies#single_movie"
end
