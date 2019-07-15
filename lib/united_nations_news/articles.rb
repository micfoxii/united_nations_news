class UnitedNationsNews::Articles
    attr_accessor :name, :url

    @@all = []

    def initialize(name = nil, url = nil)
        @name = name
        @url = "https://news.un.org/en/news" + url
        @@all << self
    end

    def self.all
        @@all
    end

end