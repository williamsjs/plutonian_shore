json.array!(@articles) do |article|
  json.extract! article, :id, :name, :image, :content, :date_published, :author
  json.url article_url(article, format: :json)
end
