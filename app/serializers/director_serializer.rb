class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthplace, :female_director

  # Tell DirectorSerializer to NOT *implicitly* use the default serializer for
  # movies (MovieSerializer), but to *explicitly* use DirectorMovieSerializer:
  has_many :movies, serializer: DirectorMovieSerializer
end
