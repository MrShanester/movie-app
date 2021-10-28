class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :english, :genre_names
end
