class Article < ActiveRecord::Base


  def self.get_ten_articles
    10.times do |count|
      title = get_articles['list']['story'][count]['title']['$text']
      Article.create(name: title)
    end
  end

  class << self
    
    private
      def get_articles
        content = HTTParty.get("http://api.npr.org/query?searchTerm=horror&output=json&apiKey=#{ENV['NPR_KEY']}")
        JSON.parse(content)  #funky npr json format
      end

      def get_content(count)
        # article = get_article so we don't have to keep repeating same function
        title = get_articles['list']['story'][count]['title']['$text']
        Article.create(title: title)
      end

  end

end
