class UnitedNationsNews::CLI

    def call
        UnitedNationsNews::Scraper.new.scrape_headlines
        list_articles
    end

    def list_articles
        UnitedNationsNews::Articles.all.each.with_index(1) do |headline, index|
            puts "#{index}. #{headline.name}"
            puts "#{headline.url}"
        end
    end


end