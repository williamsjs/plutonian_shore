class Article < ActiveRecord::Base


  #NPR_KEY
  # path: http://api.npr.org/query?searchTerm=horror&output=json&apiKey=#ENV{'NPR_KEY'}
  def self.ten_articles
    10.times do |count|
      generate_content(count)
    end
  end

  private

    def get_articles
      content = HTTParty.get('http://api.npr.org/query?searchTerm=horror&output=json&apiKey=#ENV{'NPR_KEY'}')
      JSON.parse(content)  #funky npr json format
    end

    def generate_content(count)
      # article = get_article so we don't have to keep repeating same function
      title = get_articles['list']['story'][count]['title']['text']

    end
end
