class UnitedNationsNews::Scraper

    def scrape_headlines
        doc = Nokogiri::HTML(open("https://news.un.org/en/news"))
        binding.pry
        article_headlines = doc.css('h1.story-title a')
        

        # article_headlines.each do |headline|
        #     UnitedNationsNews::Articles.new(headline.text.strip, headline.attributes)
        # end
    end
end