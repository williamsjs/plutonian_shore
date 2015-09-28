json.array!(@games) do |game|
  json.extract! game, :id, :title, :rating, :release_date, :review, :article, :author, :developer
  json.url game_url(game, format: :json)
end
