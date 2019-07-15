class UnitedNationsNews::Scraper

    def scrape_headlines
        doc = Nokogiri::HTML(open(https://news.un.org/en/news))
        article_headlines = doc.css('h1.story-title').text

        article_headlines.collect do |headline|
            UnitedNationsNews::Articles.new(headline.text, headline.attributes["href"].value)
        end

        
    end
end