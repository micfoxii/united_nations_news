class UnitedNationsNews::CLI

    def call
    # loading
    
    end



    def loading 
        spinner = Enumerator.new do |e|
            loop do
                e.yield '|'
                e.yield '/'
                e.yield '-'
                e.yield '\\'
            end
        end

        1.upto(100) do |i|
            progress = "=" * (i/5) unless i < 5
            printf("\rRetrieving United Nations Top News Stories: [%-20s] %d%% %s", progress, i , spinner.next)
            sleep(0.1)
        end
    end
end