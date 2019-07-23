class UnitedNationsNews::Scraper

    def self.base_url
        "https://news.un.org"
    end

    def self.scrape_headlines
        doc = Nokogiri::HTML(open(base_url + "/en/"))

        headlines_array = []

        doc.css("div.view-top-stories div.col-xs-12").each do |div|
            headline_name_url = {}
            headline_name_url[:title] = div.css("h1").text
            if !headline_name_url[:title].empty?
                headline_name_url[:url] = base_url + div.css("h1 a").attr("href").value
                headlines_array << headline_name_url
            end
        end
        
        Headlines.create_from_collection(headlines_array)

        scrape_headline_details
    end

    def self.scrape_headline_details
        Headlines.all.each do |headline|
            doc = Nokogiri::HTML(open(headline.url))
            binding.pry
        end
     end
end