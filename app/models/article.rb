class Article < ActiveRecord::Base
  validates :name, uniqueness: true

  def self.create_ten_articles
    articles = get_articles['list']['story']
    10.times do |count|
      get_content(articles[count])
    end
  end

  class << self

    private
      def get_articles
        content = HTTParty.get("http://api.npr.org/query?searchTerm=horror&output=json&apiKey=#{ENV['NPR_KEY']}")
        JSON.parse(content)  #funky npr json format
      end

      def get_content(article)
        name = article['title']['$text']
        content = article['link'][0]['$text'] unless article['link'].nil?
        date_published = article['storyDate']['$text']
        image = article['image'][0]['src'] unless article['image'].nil?
        Article.create(name: name, content: content, date_published: date_published, image: image)
      end

  end

end
