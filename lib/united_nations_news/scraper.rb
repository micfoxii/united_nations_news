class UnitedNationsNews::Scraper

    def self.base_url
        "https://news.un.org"
    end

    def self.scrape 
        doc = Nokogiri::HTML(open(base_url + "/en/"))
        binding.pry

        
        # doc.css("div.view-top_stories div.col-xs-12").each do |div|
        # end
    end
end