json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :director, :rating, :review, :description, :author, :date_published, :year
  json.url movie_url(movie, format: :json)
end
