class UnitedNationsNews::CLI

    def call
        # loading
        UnitedNationsNews::Scraper.scrape
        # get_headlines
        start    
    end

    def start
        puts "Welcome to the United Nations Top News Stories"
        list_headlines

        puts "Please enter the number of the corresponding article you would like to read."
        input = gets.strip

        get_headline_selection
        # find article from UnitedNations::Headlines.find(input.to_i)
        # list selected article details (article text, author, date)

        puts "Would you like to read another article? Type 'y' to return to list, or 'n' to leave."
        new_article_selection_or_exit
    end

    def get_headlines
        @headlines = ["Article 1", "Article 2", "Article 3"]
        # UnitedNationsNews::Headlines.all.each.with_index do |headline, index|
            # puts "#{index}. #{headline.name}"
        # end
    end

    def list_headlines
        @headlines.each.with_index(1) do |headline, index|
            puts "#{index}. #{headline}"
        end
    end

    def get_headline_selection
        selected_headline = gets.strip.to_i
        display_headline_details_for(selected_headline)
    end

    def display_headline_details_for(selected_headline)
        headline = @headlines[selected_headline - 1]
        puts "#{headline}"
    end

    def new_article_selection_or_exit
        
        input = gets.strip.downcase

        if input == "y"
            start
        elsif input.strip.downcase == "n"
            goodbye
        else 
            puts "Sorry, I do not understand. Please type 'y' to return to article list, or 'n' to leave."
        end
    end

    def goodbye
        puts "Come back again soon to learn more about current world events!"
    end


    # def loading 
    #     spinner = Enumerator.new do |e|
    #         loop do
    #             e.yield '|'
    #             e.yield '/'
    #             e.yield '-'
    #             e.yield '\\'
    #         end
    #     end

    #     1.upto(100) do |i|
    #         progress = "=" * (i/5) unless i < 5
    #         printf("\rRetrieving United Nations Top News Stories: [%-20s] %d%% %s", progress, i , spinner.next)
    #         sleep(0.1)
    #     end
    # end
end